# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      class ListOrganizationsResponse < Internal::Types::Model
        field :records, lambda {
          Internal::Types::Array[Payabli::Types::OrganizationQueryRecord]
        }, optional: false, nullable: false, api_name: "Records"
        field :summary, -> { Payabli::Types::QuerySummary }, optional: false, nullable: false, api_name: "Summary"
      end
    end
  end
end
