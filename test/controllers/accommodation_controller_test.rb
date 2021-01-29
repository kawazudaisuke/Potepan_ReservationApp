require "test_helper"

class AccommodationControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get accommodation_top_url
    assert_response :success
  end
end
