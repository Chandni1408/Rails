class DesignationController < ApplicationController
  def new
  	@designation = Designation.new
  end

  def create
  	@designation = Designation.new(desig_params)
    @designation.active = 1
  	if @designation.save
  		redirect_to designation_index_path
  	end
  end

  def index
  	@designation = Designation.where.not(active: 0).sorted
  end

  def show
  	@designation = Designation.find(params[:id])
  end

  def edit
    @designation = Designation.find(params[:id])

  end

  def update
    @designation = Designation.find(params[:id])
    if @designation.update_attributes(desig_params)
        redirect_to designation_index_path
    end    
  end

  def destroy
  @designation = Designation.find(params[:id])
  @designation.active = 0
  @designation.save
 
  redirect_to designation_index_path
end

  private
  def desig_params
  	params.require(:designation).permit(:designationName, :remark, :login_master_id, :department_id)
  end
end
