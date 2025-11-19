# frozen_string_literal: true

module Payabli
  module Types
    class UserData < Internal::Types::Model
      field :access, -> { Internal::Types::Array[Payabli::Types::UsrAccess] }, optional: true, nullable: false
      field :additional_data, lambda {
        Internal::Types::Hash[String, Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]]
      }, optional: true, nullable: false, api_name: "additionalData"
      field :email, -> { String }, optional: true, nullable: false
      field :language, -> { String }, optional: true, nullable: false
      field :mfa_data, -> { Payabli::Types::MfaData }, optional: true, nullable: false, api_name: "mfaData"
      field :name, -> { String }, optional: true, nullable: false
      field :phone, -> { String }, optional: true, nullable: false
      field :pwd, -> { String }, optional: true, nullable: false
      field :scope, -> { Internal::Types::Array[Payabli::Types::OrgScope] }, optional: true, nullable: false
      field :time_zone, -> { Integer }, optional: true, nullable: false, api_name: "timeZone"
      field :usr_status, -> { Integer }, optional: true, nullable: false, api_name: "usrStatus"
    end
  end
end
