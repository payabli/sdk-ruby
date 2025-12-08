# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      class RequestPaymentAuthorize < Internal::Types::Model
        field :force_customer_creation, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "forceCustomerCreation"
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :body, -> { Payabli::MoneyIn::Types::TransRequestBody }, optional: false, nullable: false
      end
    end
  end
end
