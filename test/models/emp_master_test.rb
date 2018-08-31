# == Schema Information
#
# Table name: emp_masters
#
#  id              :bigint(8)        not null, primary key
#  empName         :string
#  empGender       :integer
#  dob             :date
#  contactNumber   :string
#  email           :string
#  joinDate        :date
#  leavindDate     :date
#  active          :integer
#  login_master_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class EmpMasterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
