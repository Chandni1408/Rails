# == Schema Information
#
# Table name: emp_oraganization_profiles
#
#  id              :bigint(8)        not null, primary key
#  join_post_date  :date
#  leave_post_date :date
#  salary          :float
#  active          :integer
#  login_master_id :bigint(8)
#  emp_master_id   :bigint(8)
#  department_id   :bigint(8)
#  designation_id  :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class EmpOraganizationProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
