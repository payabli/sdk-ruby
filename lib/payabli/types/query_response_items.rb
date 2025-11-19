# frozen_string_literal: true

module Payabli
  module Types
    # Response for line item queries
    class QueryResponseItems < Internal::Types::Model
      field :records, lambda {
        Internal::Types::Array[Payabli::Types::QueryResponseItemsRecordsItem]
      }, optional: true, nullable: false, api_name: "Records"
      field :summary, -> { Payabli::Types::QuerySummary }, optional: true, nullable: false, api_name: "Summary"
    end
  end
end
