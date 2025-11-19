# frozen_string_literal: true

module Payabli
  module Types
    # Describes the response for settlement queries.
    class QueryResponseSettlements < Internal::Types::Model
      field :records, lambda {
        Internal::Types::Array[Payabli::Types::QueryResponseSettlementsRecordsItem]
      }, optional: true, nullable: false, api_name: "Records"
      field :summary, lambda {
        Payabli::Types::QueryResponseSettlementsSummary
      }, optional: true, nullable: false, api_name: "Summary"
    end
  end
end
