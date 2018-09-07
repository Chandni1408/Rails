# == Schema Information
#
# Table name: emp_accounting_profiles
#
#  id                 :bigint(8)        not null, primary key
#  pancardNum         :string
#  adharcardNum       :string
#  bankAccountNum     :string
#  ifcc               :string
#  pfNumber           :string
#  insuranceReferance :string
#  login_master_id    :bigint(8)
#  emp_master_id      :bigint(8)
#  active             :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class EmpAccountingProfile < ApplicationRecord
  belongs_to :login_master
  belongs_to :emp_master
end
