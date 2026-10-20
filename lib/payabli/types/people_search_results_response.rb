# frozen_string_literal: true

module Payabli
  module Types
    # The results of a people search.
    class PeopleSearchResultsResponse < Internal::Types::Model
      field :results, -> { Internal::Types::Array[Payabli::Types::PeopleSearchResultResponse] }, optional: false, nullable: true

      field :total, -> { Integer }, optional: false, nullable: false

      field :is_enriched_by_vendor, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isEnrichedByVendor"
    end
  end
end
