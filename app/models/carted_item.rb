# == Schema Information
#
# Table name: carted_items
#
#  id         :integer          not null, primary key
#  ord        :integer
#  cart_id    :integer          not null
#  product_id :integer          not null
#  user_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class CartedItem < ActiveRecord::Base
    validates :cart_id, :product_id, :user_id, presence: true

    belongs_to :cart,
      class_name: "Cart"
      primary_key: :id,
      foreign_key: :cart_id

    belongs_to :product,
      class_name: "Product",
      primary_key: :id,
      foreign_key: :product_id

    belongs_to :user,
      class_name: "User",
      primary_key: :id,
      foreign_key: :user_id
end
