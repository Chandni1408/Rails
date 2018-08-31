require 'test_helper'

class EmpMasterControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get emp_master_new_url
    assert_response :success
  end

end
