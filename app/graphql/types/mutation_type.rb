module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :signin_user, mutation: Mutations::SignInUser
    field :create_course, mutation: Mutations::CreateCourse
    field :update_course, mutation: Mutations::UpdateCourse
    field :destroy_course, mutation: Mutations::DestroyCourse
    field :create_payment, mutation: Mutations::CreatePayment
  end
end
