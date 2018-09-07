class EmpPayroll < ApplicationRecord
  belongs_to :login_master
  belongs_to :emp_master
end
