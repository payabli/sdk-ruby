# frozen_string_literal: true

module Payabli
  module Customer
    module Types
      class AddCustomerRequest < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false
        field :force_customer_creation, lambda {
          Internal::Types::Boolean
        }, optional: true, nullable: false, api_name: "forceCustomerCreation"
        field :replace_existing, -> { Integer }, optional: true, nullable: false, api_name: "replaceExisting"
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :body, -> { Payabli::Types::CustomerData }, optional: false, nullable: false
      end
    end
  end
end
