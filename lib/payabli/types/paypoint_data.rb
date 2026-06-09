# frozen_string_literal: true

module Payabli
  module Types
    class PaypointData < Internal::Types::Model
      field :address_1, -> { String }, optional: true, nullable: false, api_name: "Address1"

      field :address_2, -> { String }, optional: true, nullable: false, api_name: "Address2"

      field :bank_data, -> { Internal::Types::Array[Payabli::Types::Bank] }, optional: true, nullable: false, api_name: "BankData"

      field :boarding_id, -> { Integer }, optional: true, nullable: false, api_name: "BoardingId"

      field :city, -> { String }, optional: true, nullable: false, api_name: "City"

      field :contacts, -> { Internal::Types::Array[Payabli::Types::Contacts] }, optional: true, nullable: false, api_name: "Contacts"

      field :country, -> { String }, optional: true, nullable: false, api_name: "Country"

      field :credentials, -> { Internal::Types::Array[Payabli::Types::PayabliCredentialsPascal] }, optional: true, nullable: false, api_name: "Credentials"

      field :dba_name, -> { String }, optional: true, nullable: false, api_name: "DbaName"

      field :external_paypoint_id, -> { String }, optional: true, nullable: false, api_name: "externalPaypointID"

      field :fax, -> { String }, optional: true, nullable: false, api_name: "Fax"

      field :id_paypoint, -> { Integer }, optional: true, nullable: false, api_name: "IdPaypoint"

      field :legal_name, -> { String }, optional: true, nullable: false, api_name: "LegalName"

      field :parent_org, -> { Payabli::Types::OrgData }, optional: true, nullable: false, api_name: "ParentOrg"

      field :paypoint_status, -> { Integer }, optional: true, nullable: false, api_name: "PaypointStatus"

      field :phone, -> { String }, optional: true, nullable: false, api_name: "Phone"

      field :service_data, -> { Payabli::Types::Services }, optional: true, nullable: false, api_name: "ServiceData"

      field :state, -> { String }, optional: true, nullable: false, api_name: "State"

      field :summary, -> { Payabli::Types::PaypointSummary }, optional: true, nullable: false

      field :time_zone, -> { Integer }, optional: true, nullable: false, api_name: "TimeZone"

      field :website_address, -> { String }, optional: true, nullable: false, api_name: "WebsiteAddress"

      field :zip, -> { String }, optional: true, nullable: false, api_name: "Zip"

      field :statement_email, -> { Payabli::Types::StatementEmailConfig }, optional: true, nullable: false, api_name: "StatementEmail"
    end
  end
end
