module Queries
  class CoursesQuery < Queries::BaseQuery
    description 'Get all courses'

    type [Types::CourseType], null: false

    def resolve
      Course.all
    end
  end
end
