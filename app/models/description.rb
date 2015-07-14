# == Schema Information
#
# Table name: descriptions
#
#  id         :integer          not null, primary key
#  body       :string           not null
#  ord        :integer
#  product_id :integer          not null
#

class Description < ActiveRecord::Base
    validates :body, :product_id, presence: true

    belongs_to :product,
      class_name: "Product",
      primary_key: :id,
      foreign_key: :product_id
end
