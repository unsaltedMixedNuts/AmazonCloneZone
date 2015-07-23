# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Cart < ActiveRecord::Base

  has_many :products, through: :items, source: :product

  belongs_to :user,
    class_name: "User",
    primary_key: :id,
    foreign_key: :user_id

  has_many :items,
    class_name: "CartedItem",
    primary_key: :id,
    foreign_key: :cart_id

  def num_items
    num_items = 0
    self.items.each do |item|
      num_items += item.quantity
    end

    num_items
  end

  def subtotal
    subtotal = 0
    self.items.each do |item|
      subtotal += item.quantity * item.product.sales_price
    end

    subtotal.to_s[-2] == "." ? "#{subtotal}0" : subtotal
  end

  def empty_cart
    self.items.each do |item|
      item.destroy
    end

    return nil
  end
end
