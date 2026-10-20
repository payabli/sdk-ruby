# frozen_string_literal: true

module Payabli
  module Types
    # A boarding template, including its current content version.
    class Template < Internal::Types::Model
      field :uuid, -> { String }, optional: false, nullable: false

      field :org_id, -> { Integer }, optional: false, nullable: false, api_name: "orgId"

      field :org_name, -> { String }, optional: false, nullable: true, api_name: "orgName"

      field :name, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: true

      field :slug, -> { String }, optional: false, nullable: true

      field :status, -> { Payabli::Types::TemplateStatus }, optional: false, nullable: false

      field :current_version_uuid, -> { String }, optional: false, nullable: false, api_name: "currentVersionUuid"

      field :current_version, -> { Payabli::Types::TemplateVersion }, optional: false, nullable: false, api_name: "currentVersion"

      field :is_inherited, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isInherited"

      field :read_only, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "readOnly"

      field :created_by, -> { String }, optional: false, nullable: false, api_name: "createdBy"

      field :updated_by, -> { String }, optional: false, nullable: false, api_name: "updatedBy"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
    end
  end
end
