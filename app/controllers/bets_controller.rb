class BetsController < ApplicationController

  def home
    @user = current_user
    @pendingbets = []

    @user.bets.each do |b|
      @pendingbets << b if b.status == "pending"
    end
  end


  def index
    @user = current_user
    @pendingbets = []

    @user.bets.each do |b|
      @pendingbets << b if b.status == "pending"
    end
  end

  # def show
  #   @user = current_user
  #   @bet = Bet.find(params[:id])
  # end

  def show
    @user = current_user
    # get all the User's consumptions
    @bet = Bet.find(params[:id])
    startdate = @bet.date
    enddate = @bet.date + 6

    arr1 = []
    @user.consumptions.each do |c|
      arr1 << c.daily_actual_consumption if c.date >= startdate && c.date <= enddate
    end
    @consumption = arr1.sum
    if @consumption <= @bet.goal # bet is won
       p @user.wallet
       @user.wallet += @bet.amount
       @user.save!
       p @user.wallet
       @bet.status = "Congrats! you did it! We are now sending back #{@bet.amount} CAD to your balance"
       @bet.save!
    else # bet is lost
       @bet.status = "You failed! We are now sending on your behalf #{@bet.amount} CAD to an Action on Smoking and Health Association"
       @bet.save!
    end
  end



  def new
    @bet = Bet.new
  end

  def create
    @user = current_user
    # raise
    @bet = Bet.new(bet_params)
    if @bet.amount <= @user.wallet
      @bet.date = Date.today + 1
      # write code to update wallet
      @user.wallet -= @bet.amount
      @user.save!
      # write code to update new bet
      @bet.user = current_user
      @bet.status = 'pending'
      # @bet.date = Date.today
      @bet.save!
      redirect_to bets_home_path
      # flash[:alert] = 'Challenge submitted !'
      # format.html { redirect_to bets_home_path, alert: 'Challenge submitted !' }
    else
      # code to show some error
      redirect_to new_bet_path
      # flash[:alert] = 'Not enough money on your balance'
      # format.html { redirect_to new_bet_path, alert: 'Not enough money on your balance' }
    end
  end




private

def bet_params
  params.require(:bet).permit(:amount, :goal)
end


end
