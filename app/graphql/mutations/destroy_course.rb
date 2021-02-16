module Mutations
  class DestroyCourse < Mutations::BaseMutation
    argument :id, Integer, required: true

    type Types::CourseType

    def resolve(id:)
      Course.find(id).destroy
    end
  end
end
