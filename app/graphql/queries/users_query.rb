module Queries
  class UsersQuery < Queries::BaseQuery
    description 'get all users'

    type [Types::UserType], null: false

    def resolve
      User.all
    end
  end
end
