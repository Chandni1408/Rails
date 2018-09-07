require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get deshboard" do
    get dashboard_deshboard_url
    assert_response :success
  end

end
