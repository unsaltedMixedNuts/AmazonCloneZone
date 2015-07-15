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

    has_many :images, as: :imageable

    has_many :descriptions,
      class_name: "Description",
      primary_key: :id,
      foreign_key: :product_id

    has_many :specifications,
      class_name: "Specification",
      primary_key: :id,
      foreign_key: :product_id

    has_many :reviews,
      class_name: "Review",
      primary_key: :id,
      foreign_key: :product_id

    has_many :questions,
      class_name: "Question",
      primary_key: :id,
      foreign_key: :product_id

    belongs_to :department,
      class_name: "Department",
      primary_key: :id,
      foreign_key: :dept_id

    belongs_to :brand,
      class_name: "Brand",
      primary_key: :id,
      foreign_key: :brand_id
end
