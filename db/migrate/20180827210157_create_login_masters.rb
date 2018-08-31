class CreateLoginMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :login_masters do |t|
      t.string :username
      t.string :password
      t.integer :role, limit: 2
      t.integer :active, limit: 2

      t.timestamps
    end
  end
end
