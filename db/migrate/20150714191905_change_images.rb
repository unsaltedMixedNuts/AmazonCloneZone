class ChangeImages < ActiveRecord::Migration
  def change
    change_column :images, :ord, :integer, null: true
  end
end
