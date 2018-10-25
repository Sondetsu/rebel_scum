require 'test_helper'

class RebelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rebels_index_url
    assert_response :success
  end

  test "should get show" do
    get rebels_show_url
    assert_response :success
  end

end
