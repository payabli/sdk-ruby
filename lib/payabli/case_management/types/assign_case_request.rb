# frozen_string_literal: true

module Payabli
  module CaseManagement
    module Types
      class AssignCaseRequest < Internal::Types::Model
        field :uuid, -> { String }, optional: false, nullable: false

        field :assignee_id, -> { Integer }, optional: false, nullable: false, api_name: "assigneeId"

        field :reason, -> { String }, optional: true, nullable: false
      end
    end
  end
end
