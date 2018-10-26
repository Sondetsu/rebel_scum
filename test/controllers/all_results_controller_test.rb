require 'test_helper'

class AllResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get all_results_index_url
    assert_response :success
  end

end
