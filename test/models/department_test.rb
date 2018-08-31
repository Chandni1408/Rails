# == Schema Information
#
# Table name: departments
#
#  id              :bigint(8)        not null, primary key
#  departmentName  :string
#  remark          :string
#  active          :integer
#  login_master_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class DepartmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
