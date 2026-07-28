# frozen_string_literal: true

module Payabli
  module Types
    # A single entry in a case's state history.
    class StateTransitionResponse < Internal::Types::Model
      field :uuid, -> { String }, optional: false, nullable: false

      field :case_uuid, -> { String }, optional: false, nullable: false, api_name: "caseUuid"

      field :from_state, -> { Payabli::Types::CaseState }, optional: false, nullable: false, api_name: "fromState"

      field :to_state, -> { Payabli::Types::CaseState }, optional: false, nullable: false, api_name: "toState"

      field :ip_address, -> { String }, optional: false, nullable: true, api_name: "ipAddress"

      field :triggered_by, -> { Integer }, optional: false, nullable: true, api_name: "triggeredBy"

      field :reason, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :triggered_by_user, -> { Payabli::Types::UserRef }, optional: false, nullable: true, api_name: "triggeredByUser"
    end
  end
end
