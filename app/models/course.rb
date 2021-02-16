class Course < ApplicationRecord
  validates :title, :price, presence: true
  validates :title, uniqueness: true
end
