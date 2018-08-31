class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :departmentName
      t.string :remark
      t.integer :active, limit: 2
      t.references :login_master, foreign_key: true

      t.timestamps
    end
  end
end
