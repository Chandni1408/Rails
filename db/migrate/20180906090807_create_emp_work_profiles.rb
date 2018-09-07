class CreateEmpWorkProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :emp_work_profiles do |t|
      t.string :project_name
      t.date :start_date
      t.date :end_date
      t.date :target_date
      t.string :remark
      t.string :head
      t.integer :active, limit: 2
      t.references :login_master, foreign_key: true
      t.references :emp_master, foreign_key: true

      t.timestamps
    end
  end
end
