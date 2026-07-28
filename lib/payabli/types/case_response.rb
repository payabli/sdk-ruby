# frozen_string_literal: true

module Payabli
  module Types
    # A bank-account-change case.
    class CaseResponse < Internal::Types::Model
      field :uuid, -> { String }, optional: false, nullable: false

      field :state, -> { Payabli::Types::CaseState }, optional: false, nullable: false

      field :case_type, -> { Payabli::Types::CaseType }, optional: false, nullable: false, api_name: "caseType"

      field :parameters, -> { Payabli::Types::BankAccountChangeParameters }, optional: false, nullable: false

      field :org_id, -> { Integer }, optional: false, nullable: false, api_name: "orgId"

      field :paypoint_id, -> { Integer }, optional: false, nullable: false, api_name: "paypointId"

      field :schedule_for, -> { String }, optional: false, nullable: true, api_name: "scheduleFor"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"

      field :created_by, -> { Integer }, optional: false, nullable: false, api_name: "createdBy"

      field :assignee_id, -> { Integer }, optional: false, nullable: true, api_name: "assigneeId"

      field :last_reviewed_by_id, -> { Integer }, optional: false, nullable: true, api_name: "lastReviewedById"

      field :state_history, -> { Internal::Types::Array[Payabli::Types::StateTransitionResponse] }, optional: false, nullable: false, api_name: "stateHistory"

      field :attachments, -> { Internal::Types::Array[Payabli::Types::AttachmentResponse] }, optional: false, nullable: false

      field :room_id, -> { Integer }, optional: false, nullable: true, api_name: "roomId"

      field :metadata, -> { Payabli::Types::CaseMetadata }, optional: false, nullable: true

      field :org, -> { Payabli::Types::OrgRef }, optional: false, nullable: true

      field :paypoint, -> { Payabli::Types::PaypointRef }, optional: false, nullable: true

      field :created_by_user, -> { Payabli::Types::UserRef }, optional: false, nullable: true, api_name: "createdByUser"

      field :assignee, -> { Payabli::Types::UserRef }, optional: false, nullable: true

      field :last_reviewed_by, -> { Payabli::Types::UserRef }, optional: false, nullable: true, api_name: "lastReviewedBy"
    end
  end
end
