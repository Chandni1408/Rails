class EmpMasterController < ApplicationController
   def index
    @emp_master = EmpMaster.where.not(active: 0).paginate(:page => params[:page], :per_page => 5)
  end

  def new
  	@emp_master = EmpMaster.new
    @account = EmpAccountingProfile.new

  end

  def create
      	@emp_master = EmpMaster.new(params_empMaster)

          if @emp_master.save
        			redirect_to emp_master_index_path
        	end
  end

  def edit
    @emp_master = EmpMaster.find(params[:id])
  end

  def update
    @emp_master = EmpMaster.find(params[:id])
    
    if @emp_master.update_attributes(params_empMaster)
            redirect_to emp_master_index_path
    else
      redirect_to emp_master_index_path
    end
  end

  def show
    @emp_master = EmpMaster.find(params[:id])
  end

  def destroy
    @emp_master = EmpMaster.find(params[:id])
    @emp_master.active = 0
    @emp_master.save
    redirect_to emp_master_index_path
  end

  private
  def params_empMaster
  	params.require(:emp_master).permit(:empName, :empGender,:dob, :contactNumber, :email, :joinDate, :login_master_id,emp_address_attributes: [:id,:login_master_id,:currentAddress, :landmark, :city, :district, :state, :perAddress, :pLandmark, :pcity, :pdistrict, :pState],emp_family_attributes: [:id,:name, :relation, :dob, :login_master_id],emp_academic_profile_attributes:[:id , :course, :year, :percentage, :univercityBorad, :login_master_id ])
  end

end
