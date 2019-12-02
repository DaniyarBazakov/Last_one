require 'test_helper'

class ChallengeyourselfControllerTest < ActionDispatch::IntegrationTest
  test "should get deposit" do
    get challengeyourself_deposit_url
    assert_response :success
  end

  test "should get withdraw" do
    get challengeyourself_withdraw_url
    assert_response :success
  end

  test "should get bet" do
    get challengeyourself_bet_url
    assert_response :success
  end

end
