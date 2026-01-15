# frozen_string_literal: true

module PayabliSdk
  module QueryTypes
    module Types
      class ListOrganizationsResponse < Internal::Types::Model
        field :records, -> { Internal::Types::Array[PayabliSdk::Types::OrganizationQueryRecord] }, optional: false, nullable: false, api_name: "Records"
        field :summary, -> { PayabliSdk::Types::QuerySummary }, optional: false, nullable: false, api_name: "Summary"
      end
    end
  end
end
