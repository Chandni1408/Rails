class SessionsController < ApplicationController
	include SessionsHelper
	#layout false
	  def new
	  end
	  def home
	  	@user = LoginMaster.all
	  end
	  def create
	  	emp = LoginMaster.find_by_username_and_password(params[:session][:username],params[:session][:password])
	  	if emp && emp.active == 1
	  		log_in(emp)
	  		activity(emp.id)
	  		redirect_to department_home_url(emp)
	  	else
	      flash[:danger] = 'Invalid username/password combination' # Not quite right!
	      redirect_to login_url
	    end

	  end

	  def activity(id)

	  			log = LoginActivity.new
	  			log.login = Time.now
	  			log.ipAddress = request.ip
	  			log.login_master_id = id
	  			log.save
	  			session[:log_id] = LoginActivity.last.id
	  end

	  def destroy
	  	log_out
	  	logd = LoginActivity.find(session[:log_id])
	  	logd.logout = Time.now
	  	logd.save
	  	log_delete
    	redirect_to login_url
	  end
end
