class AddQuantityToCartedItems < ActiveRecord::Migration
  def change
    add_column :carted_items, :quantity, :integer, null: false
  end
end
