require 'test_helper'

class HorribleFactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get horrible_facts_index_url
    assert_response :success
  end

  test "should get show" do
    get horrible_facts_show_url
    assert_response :success
  end

end
