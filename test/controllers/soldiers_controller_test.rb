require 'test_helper'

class SoldiersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get soldiers_index_url
    assert_response :success
  end

  test "should get show" do
    get soldiers_show_url
    assert_response :success
  end

end
