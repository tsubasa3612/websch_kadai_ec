require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get purchase" do
    get users_purchase_url
    assert_response :success
  end

end
