# frozen_string_literal: true

module Payabli
  module Types
    class QueryBoardingLinksResponse < Internal::Types::Model
      field :records, -> { Internal::Types::Array[Payabli::Types::QueryBoardingLinksResponseRecordsItem] }, optional: true, nullable: false, api_name: "Records"
      field :summary, -> { Payabli::Types::QuerySummary }, optional: true, nullable: false, api_name: "Summary"
    end
  end
end
