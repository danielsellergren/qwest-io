require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_url(users(:one)) 
    assert_response :success
  end
end
