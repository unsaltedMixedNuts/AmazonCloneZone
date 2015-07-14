class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url, null: false
      t.integer :ord, null: false
      t.string :imageable_id, null: false
      t.string :imageable_type, null: false

      t.timestamps
    end
  end
end
