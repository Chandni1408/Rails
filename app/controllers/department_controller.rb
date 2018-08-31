class DepartmentController < ApplicationController

  def index
  	@department = Department.where.not(active: 0).sorted.paginate(:page => params[:page], :per_page => 5)
  end

  def new
  	@department = Department.new
  end
 def home
 end
  def show
  	@department = Department.find(params[:id])
  end

  def create
  	@department = Department.new(dept_params)
    @department.active = 1
  	if @department.save
  		redirect_to department_index_path
  	end
  end

  def edit
    @department = Department.find(params[:id])
  end

  def update
    @department = Department.all
    @department = Department.find(params[:id])
    if @department.update_attributes(dept_params)
            redirect_to department_index_path
    end
  end

  def destroy
  @department = Department.find(params[:id])
  @department.active=0
  @department.save
  redirect_to department_index_path
end

  private
  def dept_params
  	params.require(:department).permit(:departmentName, :remark, :login_master_id)
  end
end
