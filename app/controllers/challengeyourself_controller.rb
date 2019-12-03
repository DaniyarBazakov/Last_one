class ChallengeyourselfController < ApplicationController

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


  def deposit
    @user = current_user
    # write code to update wallet
    @inputdeposit = 0
    newamount = @user.wallet + @inputdeposit
    @user.wallet = newamount

  end

  def withdraw
    @user = current_user
    # write code to update wallet
    newamount = @user.wallet - inputwithdraw
    if newamount < @user.wallet
      # code to show some error
    else
      @user.wallet = newamount
      # code to confirm withdrawal
    end
  end

  def submitabet
    @user = current_user
    # write code to update wallet
    newamount = @user.wallet - inputbet
    if newamount < @user.wallet
      # code to show some error
    else
      @user.wallet = newamount
      # write code to create bet and update amount
      @bet = Bet.create
      @bet.status = 'pending'
      @bet.amount = inputbet
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

end
