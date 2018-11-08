require 'test_helper'

class DetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get details_name_url
    assert_response :success
  end

end
