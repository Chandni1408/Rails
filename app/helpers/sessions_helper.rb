module SessionsHelper
  def log_in(emp)
    session[:emp_id] = emp.id
  end

  def current_emp
    if session[:emp_id]
      @current_emp = LoginMaster.find_by(id: session[:emp_id])
    end
  end

  def logged_in?
    !current_emp.nil?
  end
  
  def log_out
    session.delete(:emp_id)
    @current_emp = nil
  end

  def log_delete
    session.delete(:log_id)
  end

  def emp_type
    return :Admin if current_emp.role == "Admin"
    return :Hr if current_emp.role == "Hr"
    return :Employee if current_emp.role == "Employee"
  end

end
