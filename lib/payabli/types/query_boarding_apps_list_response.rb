# frozen_string_literal: true

module Payabli
  module Types
    class QueryBoardingAppsListResponse < Internal::Types::Model
      field :records, -> { Internal::Types::Array[Payabli::Types::ApplicationQueryRecord] }, optional: true, nullable: false, api_name: "Records"
      field :summary, -> { Payabli::Types::QuerySummary }, optional: true, nullable: false, api_name: "Summary"
    end
  end
end
