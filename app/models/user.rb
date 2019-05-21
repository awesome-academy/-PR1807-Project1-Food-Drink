class User < ApplicationRecord
  before_save :downcase_email
  has_many :addresses, dependent: :destroy
  accepts_nested_attributes_for :addresses, update_only: true
  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  validates :phone, presence:true
end
