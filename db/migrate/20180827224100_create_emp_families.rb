class CreateEmpFamilies < ActiveRecord::Migration[5.2]
  def change
    create_table :emp_families do |t|
      t.string :name
      t.string :relation
      t.date :dob
      t.integer :active, limit: 2
      t.references :login_master, foreign_key: true
      t.references :emp_master, foreign_key: true

      t.timestamps
    end
  end
end
