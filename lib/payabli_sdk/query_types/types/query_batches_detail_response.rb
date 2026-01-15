# frozen_string_literal: true

module PayabliSdk
  module QueryTypes
    module Types
      # Response body for queries about batch details.
      class QueryBatchesDetailResponse < Internal::Types::Model
        field :records, -> { Internal::Types::Array[PayabliSdk::QueryTypes::Types::BatchDetailResponseRecord] }, optional: false, nullable: false, api_name: "Records"
        field :summary, -> { PayabliSdk::QueryTypes::Types::BatchDetailResponseSummary }, optional: false, nullable: false, api_name: "Summary"
      end
    end
  end
end
