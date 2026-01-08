require "test_helper"

class DrawResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get draw_results_index_url
    assert_response :success
  end
end
