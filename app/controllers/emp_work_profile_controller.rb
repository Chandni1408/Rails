class EmpWorkProfileController < ApplicationController
  def index
    @work = EmpWorkProfile.all
  end

  def new
  	@work = EmpWorkProfile.new
  end

  def create 
  	@work = EmpWorkProfile.new(work_params)
          if @work.save
           redirect_to emp_master_index_path 
          end
  end

  private
	  def work_params
	    params.require(:emp_work_profile).permit(:project_name,:start_date,:end_date,:target_date,:remark,:head,:login_master_id,:emp_master_id)
	  end
end
