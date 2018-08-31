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

class EmpAcademicProfile < ApplicationRecord
  belongs_to :login_master
  belongs_to :emp_master
end
