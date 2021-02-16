module Mutations
  class UpdateCourse < Mutations::BaseMutation
    argument :id, Integer, required: true
    argument :title, String, required: true
    argument :price, Float, required: true

    type Types::CourseType

    def resolve(id:, **attributes)
      Course.find(id).tap do |course|
        course.update!(attributes)
      end
    end
  end
end
