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
  belongs_to :user,
    class_name: "User",
    primary_key: :id,
    foreign_key: :user_id

  has_many :items,
    class_name: "CartedItem",
    primary_key: :id,
    foreign_key: :cart_id
end
