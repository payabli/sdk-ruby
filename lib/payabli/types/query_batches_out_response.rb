# frozen_string_literal: true

module Payabli
  module Types
    # Response body for queries about money out batches.
    class QueryBatchesOutResponse < Internal::Types::Model
      field :records, -> { Internal::Types::Array[Payabli::Types::QueryBatchesOutResponseRecordsItem] }, optional: false, nullable: false, api_name: "Records"
      field :summary, -> { Payabli::Types::BatchSummary }, optional: false, nullable: false, api_name: "Summary"
    end
  end
end
