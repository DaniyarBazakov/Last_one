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


  def show
  end





  def new
    @bet = Bet.new
  end

  def create
    @user = current_user
    # raise
    @bet = Bet.new(bet_params)
    if @bet.amount <= @user.wallet
      @bet.date = Date.today
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

  def checkmybet

  end

private

def bet_params
  params.require(:bet).permit(:amount)
end


end
