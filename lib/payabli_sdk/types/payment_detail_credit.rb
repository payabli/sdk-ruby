# frozen_string_literal: true

module PayabliSdk
  module Types
    # The PaymentDetail object for microdeposit (MakeCredit) transactions.
    class PaymentDetailCredit < Internal::Types::Model
      field :currency, -> { String }, optional: true, nullable: false
      field :service_fee, -> { Integer }, optional: true, nullable: false, api_name: "serviceFee"
      field :total_amount, -> { Integer }, optional: false, nullable: false, api_name: "totalAmount"
    end
  end
end
