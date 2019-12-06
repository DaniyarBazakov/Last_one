class GraphsController < ApplicationController

  def home

    #### THE CODE BELOW IS FOR THE INDICATORS

    if !user_signed_in?
      redirect_to new_user_session_path
    else

    @navbar_title = "Evolution"
    # so we can inject it in JS, we need to collect the result as shown below
    # [{x: '2019-11-26', y: 1 }, {t: '2019-11-25', y: 10 }, {t: '2019-11-24', y: 20 }]
    # AKA ====> an Array of hashes / in every hash, keys are x and y, values are date and consumption
    @last7 = consumptionforjs(7)
    @last30 = consumptionforjs(30)
    @alltime = consumptionforjs(alltimeappuse)
    @dayslost = sec_to_j(lifeloss)

      @day_consumption = current_user.consumptions.find_by(date: Date.today) #do not add .daily_actual_consumption because if value == nil the code will break
      @price_per_cigarette = 0.75 #The TA told me that it's useless to hardcode this value within the DB. It's the same to have it hardcoded in the code or in the DB as it's always the same value
      @initial_consumption_in_cigarettes = current_user.consumptions.first.consumption_before_last_one || 60

      if @day_consumption == nil
        @default_consumption = 0
      else
        @default_consumption = @day_consumption.daily_actual_consumption #DO NOT MODIFY !
      end

      @saving = (@initial_consumption_in_cigarettes - @default_consumption) * @price_per_cigarette #DO NOT MODIFY !
      @sum_of_consumptions = current_user.consumptions
      @counter = 0

      @sum_of_consumptions.each do |soc|
        cigarettes_saved = current_user.consumptions.first.consumption_before_last_one - soc[:daily_actual_consumption]
        @counter += cigarettes_saved
      end
      
      @money_saved = (@counter * 0.75).round(2)
      @days_of_use = (Date.today - current_user.consumptions.first.date).to_i
      @averaged_consumption = (( ( @initial_consumption_in_cigarettes.to_f * @days_of_use ) - @counter ) / @days_of_use)
    end  

    #######

  end

  def alltimeappuse
    # @user = User.find(current_user[:id])
    # User.first is for testing, to be replaced by current_user
    @user = current_user
    date_of_first_entry = @user.consumptions.first["date"]
    alltimeappuse = (Date.today - date_of_first_entry).to_i
    return alltimeappuse
  end

  def consumptionforjs(span) # span must be an integer

    # @user = User.find(current_user[:id])
    # User.first is for testing, to be replaced by current_user
    @user = current_user

    arr1 = []
    span_consumption = []

    @user.consumptions.each do |f|
      arr1 << f if f.date >= (Date.today - span) # arr1 : instances for last [span] days
    end

    arr1.each do |g|
      hash1 = {}
      hash1["x"] = g.date.to_s
      hash1["y"] = g.daily_actual_consumption
      span_consumption << hash1
    end

    span_consumption
  end



  def lifeloss
    @user = current_user
    arr1 = []
    @user.consumptions.each do |c|
      arr1 << c.daily_actual_consumption
    end
    arr1.sum*11*60
  end


  def sec_to_j(sec)
    sec / 86400.to_i
  end


end
