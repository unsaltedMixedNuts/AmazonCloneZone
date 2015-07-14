# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  sales_price :decimal(, )      not null
#  quantity    :integer          not null
#  dept_id     :integer          not null
#  brand_id    :integer          not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Product < ActiveRecord::Base
    validates :name, :sales_price, :quantity, :dept_id, :brand_id, presence: true
end
