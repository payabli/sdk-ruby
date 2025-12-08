# frozen_string_literal: true

module Payabli
  module Types
    # Subscription query response body.
    class QuerySubscriptionResponse < Internal::Types::Model
      field :records, -> { Payabli::Types::SubscriptionQueryRecords }, optional: true, nullable: false, api_name: "Records"
      field :summary, -> { Payabli::Types::QuerySummary }, optional: true, nullable: false, api_name: "Summary"
    end
  end
end
