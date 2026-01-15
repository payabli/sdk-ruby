# frozen_string_literal: true

module PayabliSdk
  module QueryTypes
    module Types
      # Response body for queries about batches.
      class QueryBatchesResponse < Internal::Types::Model
        field :records, -> { Internal::Types::Array[PayabliSdk::QueryTypes::Types::QueryBatchesResponseRecordsItem] }, optional: false, nullable: false, api_name: "Records"
        field :summary, -> { PayabliSdk::Types::BatchSummary }, optional: false, nullable: false, api_name: "Summary"
      end
    end
  end
end
