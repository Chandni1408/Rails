require 'test_helper'

class EmpAccountingProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get emp_accounting_profile_new_url
    assert_response :success
  end

end
