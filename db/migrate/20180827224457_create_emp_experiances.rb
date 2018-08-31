class CreateEmpExperiances < ActiveRecord::Migration[5.2]
  def change
    create_table :emp_experiances do |t|
      t.string :organizationName
      t.string :organizationAddress
      t.float :salary
      t.references :login_master, foreign_key: true
      t.references :emp_master, foreign_key: true
      t.references :department, foreign_key: true
      t.references :designation, foreign_key: true
      t.date :joiningDate
      t.date :leavingDate
      t.string :leavingReason
      t.integer :active, limit: 2

      t.timestamps
    end
  end
end
