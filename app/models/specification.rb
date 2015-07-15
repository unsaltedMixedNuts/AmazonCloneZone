# == Schema Information
#
# Table name: specifications
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  body       :string           not null
#  ord        :integer
#  product_id :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Specification < ActiveRecord::Base
    validates :title, :body, :product_id, presence: true

    belongs_to :product,
      class_name: "Product",
      primary_key: :id,
      foreign_key: :product_id
end
