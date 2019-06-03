class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 50 }
  validates :password, presence: true, length: { minimum: 6 }
  validates :phone, presence: true, length: { is: 10 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  
end
