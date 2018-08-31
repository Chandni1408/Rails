# == Schema Information
#
# Table name: login_activities
#
#  id              :bigint(8)        not null, primary key
#  login           :datetime
#  logout          :datetime
#  ipAddress       :string
#  login_master_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class LoginActivity < ApplicationRecord
  belongs_to :login_master
end
