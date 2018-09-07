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

class EmpWorkProfile < ApplicationRecord
  belongs_to :login_master
  belongs_to :emp_master
end
