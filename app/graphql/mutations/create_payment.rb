module Mutations
  class CreatePayment < Mutations::BaseMutation
    argument :course_id, Integer, Integer, required: true
    argument :card_number, String, required: true
    argument :cvv, Integer, required: true
    argument :expiry_date, GraphQL::Types::ISO8601DateTime, required: true

    type Types::PaymentType

    def resolve(**attibutes)
    #   Payment.create.tap do |payment|
    #     payment.card_number = attibutes[:card_number]
    #     payment.cvv = attibutes[:cvv]
    #     payment.expiry_date = attibutes[:expiry_date]
    #     payment.course_id = attibutes[:course_id]
    #     payment.user = context[:current_user]
    #   end
    fail context[:current_user].inspect
    Payment.create!(
        user_id: context[:current_user],
        course_id: attibutes[:course_id],
        card_number: attibutes[:card_number],
        cvv: attibutes[:cvv],
        expiry_date: attibutes[:expiry_date]
    )
    end
  end
end
