class CreateEmpOraganizationProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :emp_oraganization_profiles do |t|
      t.date :join_post_date
      t.date :leave_post_date
      t.float :salary
      t.integer :active, limit: 2
      t.references :login_master, foreign_key: true
      t.references :emp_master, foreign_key: true
      t.references :department, foreign_key: true
      t.references :designation, foreign_key: true

      t.timestamps
    end
  end
end
