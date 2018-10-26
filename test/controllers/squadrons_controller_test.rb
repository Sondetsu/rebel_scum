require 'test_helper'

class SquadronsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get squadrons_index_url
    assert_response :success
  end

  test "should get show" do
    get squadrons_show_url
    assert_response :success
  end

end
