# frozen_string_literal: true

module PayabliSdk
  module MoneyIn
    module Types
      class RequestPaymentV2 < Internal::Types::Model
        field :ach_validation, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "achValidation"
        field :force_customer_creation, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "forceCustomerCreation"
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :validation_code, -> { String }, optional: true, nullable: false, api_name: "validationCode"
        field :body, -> { PayabliSdk::MoneyIn::Types::TransRequestBody }, optional: false, nullable: false
      end
    end
  end
end
