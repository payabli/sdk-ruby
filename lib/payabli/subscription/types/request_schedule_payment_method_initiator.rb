# frozen_string_literal: true

module Payabli
  module Subscription
    module Types
      # The required and recommended fields for a payment made with a stored payment method.
      class RequestSchedulePaymentMethodInitiator < Internal::Types::Model
        field :initiator, -> { String }, optional: true, nullable: false
        field :stored_method_id, -> { String }, optional: true, nullable: false, api_name: "storedMethodId"
        field :stored_method_usage_type, lambda {
          String
        }, optional: true, nullable: false, api_name: "storedMethodUsageType"
      end
    end
  end
end
