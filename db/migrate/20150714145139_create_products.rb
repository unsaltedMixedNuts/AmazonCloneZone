class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.decimal :sales_price, null: false
      t.integer :quantity, null: false
      t.integer :dept_id, null: false
      t.integer :brand_id, null: false

      t.timestamps
    end
  end
end
