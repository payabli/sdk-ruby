# frozen_string_literal: true

module Payabli
  module Types
    class UserQueryRecord < Internal::Types::Model
      field :access, -> { Internal::Types::Array[Payabli::Types::UsrAccess] }, optional: true, nullable: false, api_name: "Access"
      field :additional_data, -> { String }, optional: true, nullable: false, api_name: "AdditionalData"
      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"
      field :email, -> { String }, optional: true, nullable: false, api_name: "Email"
      field :language, -> { String }, optional: true, nullable: false
      field :last_access, -> { String }, optional: true, nullable: false, api_name: "lastAccess"
      field :name, -> { String }, optional: true, nullable: false, api_name: "Name"
      field :phone, -> { String }, optional: true, nullable: false, api_name: "Phone"
      field :scope, -> { Internal::Types::Array[Payabli::Types::OrgXScope] }, optional: true, nullable: false, api_name: "Scope"
      field :sn_data, -> { String }, optional: true, nullable: false, api_name: "snData"
      field :sn_identifier, -> { String }, optional: true, nullable: false, api_name: "snIdentifier"
      field :sn_provider, -> { String }, optional: true, nullable: false, api_name: "snProvider"
      field :time_zone, -> { Integer }, optional: true, nullable: false, api_name: "timeZone"
      field :user_id, -> { Integer }, optional: true, nullable: false, api_name: "userId"
      field :usr_mfa, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "UsrMFA"
      field :usr_mfa_mode, -> { Integer }, optional: true, nullable: false, api_name: "UsrMFAMode"
      field :usr_status, -> { Integer }, optional: true, nullable: false, api_name: "UsrStatus"
    end
  end
end
