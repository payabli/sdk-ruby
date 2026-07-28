# frozen_string_literal: true

module Payabli
  module CaseManagement
    module Types
      class ListMessagesCaseManagementRequest < Internal::Types::Model
        field :case_uuid, -> { String }, optional: false, nullable: false, api_name: "caseUuid"

        field :limit, -> { Integer }, optional: true, nullable: false

        field :cursor, -> { String }, optional: true, nullable: false
      end
    end
  end
end
