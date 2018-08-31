class CreateRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :registers do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
