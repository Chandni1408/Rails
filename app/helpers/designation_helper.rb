module DesignationHelper
	def curent_dept(s)
		@id = s.department_id
      @curent_dept = Department.find_by(id: @id)
   end
end
