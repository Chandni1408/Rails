# == Schema Information
#
# Table name: designations
#
#  id              :bigint(8)        not null, primary key
#  designationName :string
#  remark          :string
#  active          :integer
#  login_master_id :bigint(8)
#  department_id   :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class DesignationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
