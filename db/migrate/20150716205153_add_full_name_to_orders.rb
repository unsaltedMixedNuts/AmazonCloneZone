class AddFullNameToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :full_name, :string, null: false
  end
end
