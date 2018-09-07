require 'test_helper'

class EmpPayrollControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get emp_payroll_index_url
    assert_response :success
  end

end
