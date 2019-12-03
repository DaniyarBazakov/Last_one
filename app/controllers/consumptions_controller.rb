class ConsumptionsController < ApplicationController

  def update
  end

  def index
  end

  def show
  end


# RIGHT BELOW IS SOME CODE FOR TEST PURPOSES ! FURTHER DOWN BELOW IS THE ORIGINAL CODE.
def home
  @navbar_title = "Daily Summary"
  if !user_signed_in?
    redirect_to new_user_session_path
  else
    @consumption = Consumption.new
    @today_consumption = current_user.consumptions.find_by(date: Date.today) #do not add .daily_actual_consumption because if value == nil the code will break
    if @today_consumption == nil
      @default_value = 0
    else
      @default_value = @today_consumption.daily_actual_consumption #DO NOT MODIFY !
    end

  end
end


# RIGHT BELOW IS SOME CODE FOR TEST PURPOSES ! FURTHER DOWN BELOW IS THE ORIGINAL CODE.
def create
  today_consumption = current_user.consumptions.find_by(date: Date.today)
  if today_consumption == nil
    @consumption = Consumption.new(consumption_params)
    @consumption.user = current_user
    @consumption.date = Date.today
    @consumption.save!
    redirect_to graphs_home_path
  else
    today_consumption.update(consumption_params)
    redirect_to graphs_home_path
  end

end



private

 def consumption_params
   params.require(:consumption).permit(:daily_actual_consumption)
 end



end
