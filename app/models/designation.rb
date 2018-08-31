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

class Designation < ApplicationRecord
  belongs_to :login_master
  belongs_to :department
  scope :sorted, lambda{order("department_id asc")}
  validates :designationName,:department_id,:remark, presence: true
end
