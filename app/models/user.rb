# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string           not null
#  name            :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
    validates :email, :name, :password_digest, :session_token, presence: true

    has_many :reviews,
      class_name: "Review",
      primary_key: :id,
      foreign_key: :user_id
end
