# frozen_string_literal: true

module Payabli
  module PayoutSubscription
    module Types
      # Payout subscription query response body.
      class QueryPayoutSubscriptionResponse < Internal::Types::Model
        field :summary, -> { Payabli::Types::QuerySummary }, optional: true, nullable: false, api_name: "Summary"

        field :records, -> { Internal::Types::Array[Payabli::PayoutSubscription::Types::PayoutSubscriptionQueryRecordPascal] }, optional: true, nullable: false, api_name: "Records"
      end
    end
  end
end
