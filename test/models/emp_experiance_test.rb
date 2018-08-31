# == Schema Information
#
# Table name: emp_experiances
#
#  id                  :bigint(8)        not null, primary key
#  organizationName    :string
#  organizationAddress :string
#  salary              :float
#  login_master_id     :bigint(8)
#  emp_master_id       :bigint(8)
#  department_id       :bigint(8)
#  designation_id      :bigint(8)
#  joiningDate         :date
#  leavingDate         :date
#  leavingReason       :string
#  active              :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class EmpExperianceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
