class LoginMasterController < ApplicationController
  def new
  	@login_master = LoginMaster.new
  end
  def create
  	@login_master = LoginMaster.new(login_params)
  	if @login_master.save
  		redirect_to new_emp_master_path
  	else
  		render 'new'
  	end
  end

  private

  def login_params
  	params.require(:login_master).permit(:username, :password, :role)
  end
end
