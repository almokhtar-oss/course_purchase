class Course < ApplicationRecord
  validates :title, :price, presence: true
  validates :title, uniqueness: true

  has_many :payments, dependent: :delete_all
end