module Mutations
  class CreateCourse < Mutations::BaseMutation
    argument :title, String, required: true
    argument :price, Float, required: true

    type Types::CourseType

    def resolve(**attributes)
      Course.create!(attributes)
    end
  end
end
