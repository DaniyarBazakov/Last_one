class GraphsController < ApplicationController

  def home
    @navbar_title = "Evolution"
    # so we can inject it in JS, we need to collect the result as shown below
    # [{x: '2019-11-26', y: 1 }, {t: '2019-11-25', y: 10 }, {t: '2019-11-24', y: 20 }]
    # AKA ====> an Array of hashes / in every hash, keys are x and y, values are date and consumption
    @last7 = consumptionforjs(7)
    @last30 = consumptionforjs(30)
    @alltime = consumptionforjs(alltimeappuse)
  end

  def alltimeappuse
    @user = User.first # User.first is for testing, to be replaced by current_user
    date_of_first_entry = @user.consumptions.first["date"]
    alltimeappuse = (Date.today - date_of_first_entry).to_i
    return alltimeappuse
  end

  def consumptionforjs(span) # span must be an integer

    @user = User.first # User.first is for testing, to be replaced by current_user

    arr1 = []
    span_consumption = []

    @user.consumptions.each do |f|
      arr1 << f if f.date > (Date.today - span) # arr1 : instances for last [span] days
    end

    arr1.each do |g|
      hash1 = {}
      hash1["x"] = g.date.to_s
      hash1["y"] = g.daily_actual_consumption
      span_consumption << hash1
    end

    span_consumption
  end

end
