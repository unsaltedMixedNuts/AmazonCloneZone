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
    validates :password, length: { minimum: 5, allow_nil: true }

    attr_reader :password

    after_initialize :ensure_session_token, :ensure_email_downcase, :ensure_shopping_cart

    has_many :carted_items, through: :cart, source: :items

    has_one :cart,
      class_name: "Cart",
      primary_key: :id,
      foreign_key: :user_id

    has_many :carted_items,
      class_name: "CartedItem",
      primary_key: :id,
      foreign_key: :user_id

    has_many :reviews,
      class_name: "Review",
      primary_key: :id,
      foreign_key: :user_id

    has_many :questions,
      class_name: "Question",
      primary_key: :id,
      foreign_key: :user_id

    has_many :answers,
      class_name: "Answer",
      primary_key: :id,
      foreign_key: :user_id

    def User.find_by_credentials(email, password)
      user = User.find_by(email: email)
      return user if user && user.is_password?(password)
      return nil
    end

    def password=(password)
      @password = password
      self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
      BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def reset_session_token!
      self.session_token = SecureRandom.urlsafe_base64(16)
      self.save
      self.session_token
    end

    private
    def ensure_session_token
      self.session_token ||= SecureRandom.urlsafe_base64(16)
    end

    def ensure_email_downcase
      self.email = self.email.downcase if self.email
    end

    def ensure_shopping_cart
      self.cart = Cart.new(user_id: self.id) unless self.cart
    end

end
