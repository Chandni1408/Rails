module DepartmentHelper
	def depended_dept(s)
		@deg = Designation.find_by(department_id: s.id)
	end
end
