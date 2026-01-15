# frozen_string_literal: true

module PayabliSdk
  module Types
    # Response body for queries about chargebacks.
    class QueryChargebacksResponse < Internal::Types::Model
      field :records, -> { Internal::Types::Array[PayabliSdk::Types::QueryChargebacksResponseRecordsItem] }, optional: true, nullable: false, api_name: "Records"
      field :summary, -> { PayabliSdk::Types::QuerySummary }, optional: true, nullable: false, api_name: "Summary"
    end
  end
end
