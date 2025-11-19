# frozen_string_literal: true

module Payabli
  module Types
    class PaypointData < Internal::Types::Model
      field :address_1, -> { String }, optional: true, nullable: false, api_name: "address1"
      field :address_2, -> { String }, optional: true, nullable: false, api_name: "address2"
      field :bank_data, lambda {
        Internal::Types::Array[Payabli::Types::Bank]
      }, optional: true, nullable: false, api_name: "bankData"
      field :boarding_id, -> { Integer }, optional: true, nullable: false, api_name: "boardingId"
      field :city, -> { String }, optional: true, nullable: false
      field :contacts, -> { Internal::Types::Array[Payabli::Types::Contacts] }, optional: true, nullable: false
      field :country, -> { String }, optional: true, nullable: false
      field :credentials, lambda {
        Internal::Types::Array[Payabli::Types::PayabliCredentialsPascal]
      }, optional: true, nullable: false
      field :dba_name, -> { String }, optional: true, nullable: false, api_name: "dbaName"
      field :external_paypoint_id, -> { String }, optional: true, nullable: false, api_name: "externalPaypointID"
      field :fax, -> { String }, optional: true, nullable: false
      field :id_paypoint, -> { Integer }, optional: true, nullable: false, api_name: "idPaypoint"
      field :legal_name, -> { String }, optional: true, nullable: false, api_name: "legalName"
      field :parent_org, -> { Payabli::Types::OrgData }, optional: true, nullable: false, api_name: "parentOrg"
      field :paypoint_status, -> { Integer }, optional: true, nullable: false, api_name: "paypointStatus"
      field :phone, -> { String }, optional: true, nullable: false
      field :service_data, -> { Payabli::Types::Services }, optional: true, nullable: false, api_name: "serviceData"
      field :state, -> { String }, optional: true, nullable: false
      field :summary, -> { Payabli::Types::PaypointSummary }, optional: true, nullable: false
      field :time_zone, -> { Integer }, optional: true, nullable: false, api_name: "timeZone"
      field :website_address, -> { String }, optional: true, nullable: false, api_name: "websiteAddress"
      field :zip, -> { String }, optional: true, nullable: false
    end
  end
end
