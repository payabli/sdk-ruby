# frozen_string_literal: true

module Payabli
  module Types
    # A billing profile assigned to an entity, returned by the View profile
    # endpoint. A profile is a named configuration of billable events, each with
    # one or more fee schedules. Profiles are append-only versioned — every edit
    # mints a new version.
    class BillingProfileResponse < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :version_id, -> { Integer }, optional: false, nullable: false, api_name: "versionId"

      field :version_number, -> { Integer }, optional: false, nullable: false, api_name: "versionNumber"

      field :business, -> { Payabli::Types::BillingEntity }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :fee_type, -> { Integer }, optional: false, nullable: false, api_name: "feeType"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"

      field :parent_id, -> { String }, optional: false, nullable: false, api_name: "parentId"

      field :billable_events, -> { Internal::Types::Array[Payabli::Types::BillableEvent] }, optional: false, nullable: false, api_name: "billableEvents"
    end
  end
end
