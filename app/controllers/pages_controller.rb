class PagesController < ApplicationController

  def home
    @last7 = specificlengthconsumption(7)
    @last30 = specificlengthconsumption(30)
  end

  def specificlengthconsumption(span) # span must be an integer

    @user = User.first # User.first is for testing, to be replaced by current_user

    arr1 = []
    last_span_consumption = []

    # Consumption.all.each do |e|
    #   arr0 << e if e.user_id == @user[:id] # arr0 : all time instances for current user
    # end

    @user.consumptions.each do |f|
      arr1 << f if f.date > (Date.today - span) # arr1 : instances for last [span] days
    end

    arr1.each do |g|
      last_span_consumption << g.daily_actual_consumption # array of integers
    end

  # returns array with daily consumption (integer) for each of the last [span] days
    return last_span_consumption
  end

end
