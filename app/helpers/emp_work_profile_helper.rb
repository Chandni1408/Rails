module EmpWorkProfileHelper
	def curent_emp(s)
		@id = s.emp_master_id
      @curent_dept = EmpMaster.find_by(id: @id)
   end
end
