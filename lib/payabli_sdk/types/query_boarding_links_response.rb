# frozen_string_literal: true

module PayabliSdk
  module Types
    class QueryBoardingLinksResponse < Internal::Types::Model
      field :records, -> { Internal::Types::Array[PayabliSdk::Types::QueryBoardingLinksResponseRecordsItem] }, optional: true, nullable: false, api_name: "Records"
      field :summary, -> { PayabliSdk::Types::QuerySummary }, optional: true, nullable: false, api_name: "Summary"
    end
  end
end
