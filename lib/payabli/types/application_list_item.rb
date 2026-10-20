# frozen_string_literal: true

module Payabli
  module Types
    # A boarding application (request), as returned in a list of applications.
    class ApplicationListItem < Internal::Types::Model
      field :requests_reference, -> { String }, optional: false, nullable: false, api_name: "requestsReference"

      field :business_reference, -> { String }, optional: false, nullable: false, api_name: "businessReference"

      field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

      field :parent, -> { String }, optional: true, nullable: false

      field :parent_org_name, -> { String }, optional: true, nullable: false, api_name: "parentOrgName"

      field :entity_type, -> { String }, optional: true, nullable: false, api_name: "entityType"

      field :dba_name, -> { String }, optional: true, nullable: false, api_name: "dbaName"

      field :application_status, -> { String }, optional: false, nullable: false, api_name: "applicationStatus"

      field :application_status_code, -> { Integer }, optional: false, nullable: false, api_name: "applicationStatusCode"

      field :allowed_actions, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "allowedActions"

      field :request_template, -> { String }, optional: true, nullable: false, api_name: "requestTemplate"

      field :services, -> { Payabli::Types::RequestedServices }, optional: true, nullable: false

      field :tags, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :representatives, -> { Internal::Types::Array[Payabli::Types::RepresentativeResponse] }, optional: true, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :submitted_at, -> { String }, optional: true, nullable: false, api_name: "submittedAt"

      field :links, -> { Payabli::Types::ApplicationLinks }, optional: false, nullable: false, api_name: "_links"

      field :paypoint_name, -> { String }, optional: false, nullable: true, api_name: "paypointName"

      field :paypoint_legal_name, -> { String }, optional: false, nullable: true, api_name: "paypointLegalName"

      field :ein, -> { String }, optional: false, nullable: true

      field :primary_owner_name, -> { String }, optional: false, nullable: true, api_name: "primaryOwnerName"

      field :primary_owner_reference, -> { String }, optional: false, nullable: true, api_name: "primaryOwnerReference"
    end
  end
end
