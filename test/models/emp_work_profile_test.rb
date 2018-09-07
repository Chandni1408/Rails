# == Schema Information
#
# Table name: emp_work_profiles
#
#  id              :bigint(8)        not null, primary key
#  project_name    :string
#  start_date      :date
#  end_date        :date
#  target_date     :date
#  remark          :string
#  head            :string
#  active          :integer
#  login_master_id :bigint(8)
#  emp_master_id   :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class EmpWorkProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
