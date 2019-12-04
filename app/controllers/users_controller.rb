class UsersController < ApplicationController

  def deposit
    @user = current_user
    # raise
    # write code to update wallet
    inputdeposit =  params[:user][:wallet_deposit].to_i
    @user.wallet += inputdeposit
    @user.save
    redirect_to bets_home_path
  end

  def withdraw
    @user = current_user
    # raise
    # write code to update wallet
    inputwithdraw = params[:user][:wallet_withdraw].to_i
    if inputwithdraw > @user.wallet
      # code to show some error
    else
      @user.wallet -= inputwithdraw
      @user.save
      redirect_to bets_home_path
    end
  end


end
