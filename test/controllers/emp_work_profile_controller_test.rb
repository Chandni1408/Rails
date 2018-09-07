require 'test_helper'

class EmpWorkProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get emp_work_profile_new_url
    assert_response :success
  end

end
