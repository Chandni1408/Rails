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

class EmpMaster < ApplicationRecord
  belongs_to :login_master
  has_one :emp_address
  has_one :emp_family 
  has_one :emp_academic_profile
  accepts_nested_attributes_for :emp_address
  accepts_nested_attributes_for :emp_family
  accepts_nested_attributes_for :emp_academic_profile
  enum empGender: { Male: 0, Female: 1}
  
  

  

end
