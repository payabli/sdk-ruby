# frozen_string_literal: true

module Payabli
  module CaseManagement
    module Types
      class ListCasesCaseManagementRequest < Internal::Types::Model
        field :organization_id, -> { Integer }, optional: false, nullable: false, api_name: "organizationId"

        field :from_record, -> { Integer }, optional: true, nullable: false, api_name: "fromRecord"

        field :limit_record, -> { Integer }, optional: true, nullable: false, api_name: "limitRecord"

        field :sort_by, -> { String }, optional: true, nullable: false, api_name: "sortBy"
      end
    end
  end
end
