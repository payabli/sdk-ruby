# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # Response body for queries about batches.
      class QueryBatchesResponse < Internal::Types::Model
        field :records, -> { Internal::Types::Array[Payabli::QueryTypes::Types::QueryBatchesResponseRecordsItem] }, optional: false, nullable: false, api_name: "Records"
        field :summary, -> { Payabli::Types::BatchSummary }, optional: false, nullable: false, api_name: "Summary"
      end
    end
  end
end
