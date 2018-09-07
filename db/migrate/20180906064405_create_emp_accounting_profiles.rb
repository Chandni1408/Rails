class CreateEmpAccountingProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :emp_accounting_profiles do |t|
      t.string :pancardNum
      t.string :adharcardNum
      t.string :bankAccountNum
      t.string :ifcc
      t.string :pfNumber
      t.string :insuranceReferance
      t.references :login_master, foreign_key: true
      t.references :emp_master, foreign_key: true
      t.integer :active, limit: 2

      t.timestamps
    end
  end
end
