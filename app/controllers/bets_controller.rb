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
    @bet = Bet.new(bet_params)
    # write code to update wallet
    newamount = @user.wallet - @bet.amount
    if newamount >= @user.wallet
      @user.wallet = newamount
      # write code to create bet and update amount
      @bet.status = 'pending'
      # @bet.amount = bet_params
      @bet.save
        redirect_to bets_home_path
    else
      # code to show some error
      redirect_to new_bet_path
    end
  end

  def checkmybet
    @user = current_user
    # write code to fetch user's bets which are pending
    pendingbets = []
    @user.bets.each do |b|
      pendingbets << b if b.status == pending
    end
    # check if Date.today allows to settle bets
    betstosettle = []
    arr1.each do |b|
      betstosettle << b if b.date < Date.today - 7
    end
    # refund money if bet is won and update the status
    if # bet is won
      betstosettle.each do |b|
        b.user.wallet += b.amount
        b.status = "won"
        # display a winning msg
      end
    else
      b.status = "lost"
      # display a "you lost" message
    end
  end

private

def bet_params
  params.require(:bet).permit(:amount)
end


end
