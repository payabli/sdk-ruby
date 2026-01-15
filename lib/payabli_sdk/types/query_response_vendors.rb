# frozen_string_literal: true

module PayabliSdk
  module Types
    # Response payload for queries related to vendors.
    class QueryResponseVendors < Internal::Types::Model
      field :records, -> { Internal::Types::Array[PayabliSdk::Types::VendorQueryRecord] }, optional: true, nullable: false, api_name: "Records"
      field :summary, -> { PayabliSdk::Types::QuerySummary }, optional: true, nullable: false, api_name: "Summary"
    end
  end
end
