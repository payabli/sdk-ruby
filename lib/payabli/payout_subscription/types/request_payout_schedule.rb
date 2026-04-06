# frozen_string_literal: true

module Payabli
  module PayoutSubscription
    module Types
      class RequestPayoutSchedule < Internal::Types::Model
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :body, -> { Payabli::PayoutSubscription::Types::PayoutSubscriptionRequestBody }, optional: false, nullable: false
      end
    end
  end
end
