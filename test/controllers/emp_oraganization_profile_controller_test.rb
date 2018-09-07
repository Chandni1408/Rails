require 'test_helper'

class EmpOraganizationProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get emp_oraganization_profile_new_url
    assert_response :success
  end

end
