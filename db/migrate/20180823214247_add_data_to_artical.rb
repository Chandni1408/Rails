class AddDataToArtical < ActiveRecord::Migration[5.2]
  def change
    add_column :articals, :title, :string
    add_column :articals, :text, :text
  end
end
