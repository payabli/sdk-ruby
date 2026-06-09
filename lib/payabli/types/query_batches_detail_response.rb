# frozen_string_literal: true

module Payabli
  module Types
    # Response body for queries about batch details.
    class QueryBatchesDetailResponse < Internal::Types::Model
      field :records, -> { Internal::Types::Array[Payabli::Types::BatchDetailResponseRecord] }, optional: false, nullable: false, api_name: "Records"

      field :summary, -> { Payabli::Types::BatchDetailResponseSummary }, optional: false, nullable: false, api_name: "Summary"
    end
  end
end
