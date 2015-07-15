class RemoveUserIdFromCartedItems < ActiveRecord::Migration
  def change
    remove_column :carted_items, :user_id, :integer
  end
end
