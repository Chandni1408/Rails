class CreateEmpPayrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :emp_payrolls do |t|
      t.string :monthName
      t.integer :workingDay, limit: 2
      t.float :overtime
      t.integer :cl, limit: 2
      t.integer :paidLeave, limit: 2
      t.integer :presentDay, limit: 2
      t.integer :grossSalary
      t.integer :conveyance
      t.integer :medicalAllounc
      t.integer :travalingAllounce
      t.integer :extraAllowance
      t.integer :active, limit: 2
      t.references :login_master, foreign_key: true
      t.references :emp_master, foreign_key: true

      t.timestamps
    end
  end
end
