class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.string :body, null: false
      t.integer :ord
      t.integer :product_id, null: false
    end
  end
end
