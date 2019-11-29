require 'test_helper'

class GraphsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get graphs_home_url
    assert_response :success
  end

end
