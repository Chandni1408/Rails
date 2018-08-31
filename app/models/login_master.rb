# == Schema Information
#
# Table name: login_masters
#
#  id         :bigint(8)        not null, primary key
#  username   :string
#  password   :string
#  role       :integer
#  active     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LoginMaster < ApplicationRecord
	enum role: { Admin: 0, Hr: 1 ,Employee: 2}
end
