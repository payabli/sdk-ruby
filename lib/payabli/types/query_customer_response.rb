# frozen_string_literal: true

module Payabli
  module Types
    class QueryCustomerResponse < Internal::Types::Model
      field :records, lambda {
        Internal::Types::Array[Payabli::Types::CustomerQueryRecords]
      }, optional: true, nullable: false, api_name: "Records"
      field :summary, -> { Payabli::Types::QuerySummary }, optional: true, nullable: false, api_name: "Summary"
    end
  end
end
