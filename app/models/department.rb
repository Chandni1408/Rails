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

class Department < ApplicationRecord
  belongs_to :login_master
  has_many :designation
  scope :sorted, lambda{order("created_at desc")}
  validates :departmentName,:remark, presence: true
end
