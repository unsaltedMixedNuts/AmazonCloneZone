# == Schema Information
#
# Table name: carted_items
#
#  id         :integer          not null, primary key
#  ord        :integer
#  cart_id    :integer          not null
#  product_id :integer          not null
#  created_at :datetime
#  updated_at :datetime
#  quantity   :integer          not null
#

class CartedItem < ActiveRecord::Base
    validates :cart_id, :product_id, presence: true

    has_many :users, through: :cart, source: :user

    belongs_to :cart,
      class_name: "Cart",
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
