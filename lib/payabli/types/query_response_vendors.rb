# frozen_string_literal: true

module Payabli
  module Types
    # Response payload for queries related to vendors.
    class QueryResponseVendors < Internal::Types::Model
      field :records, lambda {
        Internal::Types::Array[Payabli::Types::VendorQueryRecord]
      }, optional: true, nullable: false, api_name: "Records"
      field :summary, -> { Payabli::Types::QuerySummary }, optional: true, nullable: false, api_name: "Summary"
    end
  end
end
