# == Schema Information
#
# Table name: emp_families
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  relation        :string
#  dob             :date
#  active          :integer
#  login_master_id :bigint(8)
#  emp_master_id   :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class EmpFamily < ApplicationRecord
  belongs_to :login_master
  belongs_to :emp_master
  validates :name,:relation,:dob, presence: true
end
