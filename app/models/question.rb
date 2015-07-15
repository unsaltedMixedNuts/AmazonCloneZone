# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  body       :string           not null
#  product_id :integer          not null
#  user_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Question < ActiveRecord::Base
  validates :body, :product_id, :user_id, presence: true

  belongs_to :product,
    class_name: "Product",
    primary_key: :id,
    foreign_key: :product_id

  belongs_to :user,
    class_name: "User",
    primary_key: :id,
    foreign_key: :user_id

  has_many :answers,
    class_name: "Answer",
    primary_key: :id,
    foreign_key: :question_id
end
