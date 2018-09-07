class EmpAccountingProfileController < ApplicationController
  def new
  	@account = EmpAccountingProfile.new
  end

  def create 
  	@account = EmpAccountingProfile.new(account_params)
          if @account.save
           redirect_to emp_master_index_path 
          end
  end

  private
	  def account_params
	    params.require(:emp_accounting_profile).permit(:pancardNum ,:adharcardNum ,:bankAccountNum,:ifcc,:pfNumber,:insuranceReferance,:login_master_id,:emp_master_id)
	  end
end
