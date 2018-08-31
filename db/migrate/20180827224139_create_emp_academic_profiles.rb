class CreateEmpAcademicProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :emp_academic_profiles do |t|
      t.string :course
      t.date :year
      t.float :percentage
      t.string :univercityBorad
      t.integer :active, limit: 2
      t.references :login_master, foreign_key: true
      t.references :emp_master, foreign_key: true

      t.timestamps
    end
  end
end
