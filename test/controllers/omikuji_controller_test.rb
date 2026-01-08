require "test_helper"

class OmikujiControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get omikuji_show_url
    assert_response :success
  end
end
