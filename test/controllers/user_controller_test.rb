require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get purchase" do
    get user_purchase_url
    assert_response :success
  end

end
