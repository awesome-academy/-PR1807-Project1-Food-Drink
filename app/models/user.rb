class User < ApplicationRecord
  has_many  :addresses, dependent: :destroy
  validates :name, presences: true
  validates :phone, presences: true
  validates :email, presences: true 	
  validates :password, presences: true
end
