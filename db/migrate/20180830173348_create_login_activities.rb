class CreateLoginActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :login_activities do |t|
      t.datetime :login
      t.datetime :logout
      t.string :ipAddress
      t.references :login_master, foreign_key: true

      t.timestamps
    end
  end
end
