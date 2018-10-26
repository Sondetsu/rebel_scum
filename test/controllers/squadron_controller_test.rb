require 'test_helper'

class SquadronControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get squadron_index_url
    assert_response :success
  end

  test "should get show" do
    get squadron_show_url
    assert_response :success
  end

end
