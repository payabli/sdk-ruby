# frozen_string_literal: true

module Payabli
  module Subscription
    module Types
      class RequestSchedule < Internal::Types::Model
        field :force_customer_creation, lambda {
          Internal::Types::Boolean
        }, optional: true, nullable: false, api_name: "forceCustomerCreation"
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :body, -> { Payabli::Subscription::Types::SubscriptionRequestBody }, optional: false, nullable: false
      end
    end
  end
end
