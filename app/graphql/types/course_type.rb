module Types
  class CourseType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :price, Float, null: false
  end
end
