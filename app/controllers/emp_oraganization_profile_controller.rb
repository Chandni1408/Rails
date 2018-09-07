class EmpOraganizationProfileController < ApplicationController
  def new
  	@organization = EmpOraganizationProfile.new
  end

  def create
  	@organization = EmpOraganizationProfile.new(organization_params)
  	if @organization.save
  		redirect_to emp_master_index_path 
  	end
  end

  private
	  def organization_params
	    params.require(:emp_oraganization_profile).permit(:join_post_date,:leave_post_date,:salary,:login_master_id,:emp_master_id,:department_id,:designation_id)
	  end
end
