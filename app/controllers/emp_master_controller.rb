class EmpMasterController < ApplicationController
  def new
  	@emp_master = EmpMaster.new
  end

  def create
  	@emp_master = EmpMater.new()
  end
end
