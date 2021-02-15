class User < ApplicationRecord
  has_secure_password
  has_many :payments
  has_many :courses, through: :payments

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
