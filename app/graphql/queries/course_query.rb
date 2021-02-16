module Queries
  class CourseQuery < Queries::BaseQuery
    description 'get course by id'

    type Types::CourseType, null: false
    argument :id, Integer, required: true

    def resolve(id:)
      Course.find(id)
    end
  end
end
