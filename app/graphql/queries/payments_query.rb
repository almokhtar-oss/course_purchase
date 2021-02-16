module Queries
  class PaymentsQuery < Queries::BaseQuery
    description 'get all payments'

    type [Types::PaymentType], null: false

    def resolve
      Payment.all
    end
  end
end
