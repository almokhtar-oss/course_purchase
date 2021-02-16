module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :courses, resolver: Queries::CoursesQuery
    field :users, resolver: Queries::UsersQuery
    field :user, resolver: Queries::UserQuery
    field :course, resolver: Queries::CourseQuery
  end
end
