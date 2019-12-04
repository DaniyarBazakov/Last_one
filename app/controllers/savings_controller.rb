class SavingsController < ApplicationController
 
  def index

    if !user_signed_in?
      redirect_to new_user_session_path
    else

      @day_consumption = current_user.consumptions.find_by(date: Date.today) #do not add .daily_actual_consumption because if value == nil the code will break
      @price_per_cigarette = 0.75 #The TA told me that it's useless to hardcode this value within the DB. It's the same to have it hardcoded in the code or in the DB as it's always the same value
      @initial_consumption_in_cigarettes = current_user.consumptions.first.consumption_before_last_one

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
      
      @money_saved = @counter * 0.75
      @days_of_use = (Date.today - current_user.consumptions.first.date)
      @averaged_consumption = (( ( @initial_consumption_in_cigarettes * @days_of_use ) - @counter ) / @days_of_use)
    end
  end
end