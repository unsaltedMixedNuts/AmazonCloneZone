# == Schema Information
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  order_number   :string           not null
#  payment_method :string           not null
#  address_line_1 :string           not null
#  address_line_2 :string           not null
#  user_id        :integer          not null
#  created_at     :datetime
#  updated_at     :datetime
#  full_name      :string           not null
#

class Order < ActiveRecord::Base
  validates :order_number, :payment_method, :address_line_1, :address_line_2, :user_id, presence: true
  after_initialize :ensure_order_number

  belongs_to :user,
    class_name: "User",
    primary_key: :id,
    foreign_key: :user_id

  def ensure_order_number
    date = Time.now.strftime "%Y%m%e"
    chars = 'abcdefghijklmnopqrstuvwxyz'.split("").concat('01234567890123456789'.split(""))

    unique = false
    until unique
      uid = Array.new(5){ chars[ rand(chars.length) ] }.join
      order_num = date + uid
      unique = true if !Order.where("order_number = ?", uid).first
    end

    self.order_number ||= order_num
  end

end
