class CreateDesignations < ActiveRecord::Migration[5.2]
  def change
    create_table :designations do |t|
      t.string :designationName
      t.string :remark
      t.integer :active, limit: 2
      t.references :login_master, foreign_key: true
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
