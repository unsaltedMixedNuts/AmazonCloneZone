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
    has_many :carts, through: :carted_items, source: :cart

    has_many :carted_items,
      class_name: "CartedItem",
      primary_key: :id,
      foreign_key: :product_id

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

    def average_stars
      num_of_reviews = self.reviews.count

      if num_of_reviews == 0
        return "Be the first to review this item"
      end

      total_stars = 0.0
      self.reviews.each do |review|
        total_stars += review.stars
      end

      average_stars = (total_stars / num_of_reviews).round(1)
    end

    def price
      if self.sales_price.to_s[-2] == "."
        "#{self.sales_price}0"
      else
        self.sales_price
      end
    end

    def delivery_estimate
      day = Time.now.strftime("%A")
      date = 2.days.since(Time.now).strftime("%B %e")
      "#{day.upcase}, #{date}"
    end
end
