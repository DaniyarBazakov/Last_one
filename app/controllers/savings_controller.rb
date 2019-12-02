class SavingsController < ApplicationController
 
  def index
      @saving = Saving.new
      @cigarette_box_price = 15
      @price_per_cigarette = 0.75  # 15/20 = 0.75
      @initial_consumption_in_cigarettes = 60  
      @today_consumption = current_user.consumptions.find_by(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
      @saving = (@initial_consumption_in_cigarettes - @today_consumption) * @price_per_cigarette
    end
 
end
