# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      class DeviceQueryRecord < Internal::Types::Model
        field :device_id, -> { String }, optional: false, nullable: true, api_name: "deviceId"

        field :id_cloud, -> { Integer }, optional: false, nullable: true, api_name: "idCloud"

        field :description, -> { String }, optional: false, nullable: true

        field :serial_number, -> { String }, optional: false, nullable: true, api_name: "serialNumber"

        field :friendly_name, -> { String }, optional: false, nullable: true, api_name: "friendlyName"

        field :make, -> { String }, optional: false, nullable: true

        field :model, -> { String }, optional: false, nullable: true

        field :device_type, -> { Integer }, optional: false, nullable: true, api_name: "deviceType"

        field :device_status, -> { Integer }, optional: false, nullable: true, api_name: "deviceStatus"

        field :device_os, -> { Integer }, optional: false, nullable: true, api_name: "deviceOs"

        field :mac_address, -> { String }, optional: false, nullable: true, api_name: "macAddress"

        field :last_health_check, -> { String }, optional: false, nullable: true, api_name: "lastHealthCheck"

        field :registration_code, -> { String }, optional: false, nullable: true, api_name: "registrationCode"

        field :activation_attempts, -> { Integer }, optional: false, nullable: true, api_name: "activationAttempts"

        field :activation_code_expiry, -> { String }, optional: false, nullable: true, api_name: "activationCodeExpiry"

        field :created_at, -> { String }, optional: false, nullable: true, api_name: "createdAt"

        field :updated_at, -> { String }, optional: false, nullable: true, api_name: "updatedAt"

        field :paypoint_id, -> { Integer }, optional: false, nullable: true, api_name: "paypointId"

        field :paypoint_dba, -> { String }, optional: false, nullable: true, api_name: "paypointDba"

        field :paypoint_legal, -> { String }, optional: false, nullable: true, api_name: "paypointLegal"

        field :paypoint_entry, -> { String }, optional: false, nullable: true, api_name: "paypointEntry"

        field :external_paypoint_id, -> { String }, optional: false, nullable: true, api_name: "externalPaypointId"

        field :parent_org_id, -> { Integer }, optional: false, nullable: true, api_name: "parentOrgId"

        field :parent_org_name, -> { String }, optional: false, nullable: true, api_name: "parentOrgName"
      end
    end
  end
end
