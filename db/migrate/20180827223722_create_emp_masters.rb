class CreateEmpMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :emp_masters do |t|
      t.string :empName
      t.integer :empGender
      t.date :dob
      t.string :contactNumber
      t.string :email
      t.date :joinDate
      t.date :leavindDate
      t.integer :active, limit: 2
      t.references :login_master, foreign_key: true

      t.timestamps
    end
  end
end
