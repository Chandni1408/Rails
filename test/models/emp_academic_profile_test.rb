# == Schema Information
#
# Table name: emp_academic_profiles
#
#  id              :bigint(8)        not null, primary key
#  course          :string
#  year            :date
#  percentage      :float
#  univercityBorad :string
#  active          :integer
#  login_master_id :bigint(8)
#  emp_master_id   :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class EmpAcademicProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
