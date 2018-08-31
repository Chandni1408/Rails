class CreateUserData < ActiveRecord::Migration[5.2]
  def change
    create_table :user_data do |t|
      t.string :fname
      t.string :lname
      t.string :mobile
      t.string :email

      t.timestamps
    end
  end
end
