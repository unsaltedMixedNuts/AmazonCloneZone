class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_number, null: false
      t.string :payment_method, null: false
      t.string :address_line_1, null: false
      t.string :address_line_2, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
