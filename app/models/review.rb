# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  body       :string           not null
#  stars      :integer          not null
#  user_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#  product_id :integer          not null
#

class Review < ActiveRecord::Base
    validates :title, :body, :stars, :user_id, presence: true

    belongs_to :user,
      class_name: "User",
      primary_key: :id,
      foreign_key: :user_id

    belongs_to :product,
      class_name: "Product",
      primary_key: :id,
      foreign_key: :product_id
end
