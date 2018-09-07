class DashboardController < ApplicationController
  def deshboard
  	@emp = LoginMaster.find(params[:id])
  end
end
