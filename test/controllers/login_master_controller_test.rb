require 'test_helper'

class LoginMasterControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_master_new_url
    assert_response :success
  end

end
