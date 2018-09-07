# == Schema Information
#
# Table name: emp_addresses
#
#  id              :bigint(8)        not null, primary key
#  currentAddress  :text
#  landmark        :string
#  city            :string
#  district        :string
#  state           :string
#  perAddress      :text
#  pLandmark       :string
#  pcity           :string
#  pdistrict       :string
#  pState          :string
#  active          :integer
#  login_master_id :bigint(8)
#  emp_master_id   :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class EmpAddress < ApplicationRecord
  belongs_to :login_master
  belongs_to :emp_master
  
end
