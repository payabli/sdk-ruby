# frozen_string_literal: true

module Payabli
  module MoneyOutTypes
    module Types
      # Object containing payment details.
      class RequestOutAuthorizePaymentDetails < Internal::Types::Model
        field :check_number, -> { String }, optional: true, nullable: false, api_name: "checkNumber"
        field :currency, -> { String }, optional: true, nullable: false
        field :service_fee, -> { Integer }, optional: true, nullable: false, api_name: "serviceFee"
        field :total_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalAmount"
        field :unbundled, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
