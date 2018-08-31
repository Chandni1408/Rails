class CreateEmpAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :emp_addresses do |t|
      t.text :currentAddress
      t.string :landmark
      t.string :city
      t.string :district
      t.string :state
      t.text :perAddress
      t.string :pLandmark
      t.string :pcity
      t.string :pdistrict
      t.string :pState
      t.integer :active, limit: 2
      t.references :login_master, foreign_key: true
      t.references :emp_master, foreign_key: true

      t.timestamps
    end
  end
end
