class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
        t.column "first_name",:string,:limit =>25
	t.string "last_name", :limit => 25
	t.string "email",:default =>" ",:null => false
        t.timestamps
	#t.datatime "created_at"
	#t.datatime "updated_at"
    end
  end
  def down
	drop_table :users
    end
end
