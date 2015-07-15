class CreateCartedItems < ActiveRecord::Migration
  def change
    create_table :carted_items do |t|
      t.integer :ord
      t.integer :cart_id, null: false
      t.integer :product_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
