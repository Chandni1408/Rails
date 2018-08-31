require 'test_helper'

class DesignationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get designation_new_url
    assert_response :success
  end

  test "should get index" do
    get designation_index_url
    assert_response :success
  end

end
