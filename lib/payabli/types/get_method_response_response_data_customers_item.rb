# frozen_string_literal: true

module Payabli
  module Types
    # The customer record that owns the stored payment method.
    class GetMethodResponseResponseDataCustomersItem < Internal::Types::Model
      field :additional_fields, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false, api_name: "additionalFields"

      field :address, -> { String }, optional: true, nullable: false

      field :address_1, -> { String }, optional: true, nullable: false, api_name: "address1"

      field :balance, -> { Integer }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :company, -> { String }, optional: true, nullable: false

      field :country, -> { String }, optional: true, nullable: false

      field :created, -> { String }, optional: true, nullable: false

      field :customer_consent, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "customerConsent"

      field :customer_events, -> { Internal::Types::Array[Object] }, optional: true, nullable: false, api_name: "customerEvents"

      field :customer_id, -> { Integer }, optional: true, nullable: false, api_name: "customerId"

      field :customer_number, -> { String }, optional: true, nullable: false, api_name: "customerNumber"

      field :customer_portal, -> { String }, optional: true, nullable: false, api_name: "customerPortal"

      field :customer_status, -> { Integer }, optional: true, nullable: false, api_name: "customerStatus"

      field :customer_summary, -> { Payabli::Types::CustomerSummaryRecord }, optional: true, nullable: false, api_name: "customerSummary"

      field :customer_username, -> { String }, optional: true, nullable: false, api_name: "customerUsername"

      field :email, -> { String }, optional: true, nullable: false

      field :external_paypoint_id, -> { String }, optional: true, nullable: false, api_name: "externalPaypointID"

      field :firstname, -> { String }, optional: true, nullable: false

      field :identifier_fields, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "identifierFields"

      field :lastname, -> { String }, optional: true, nullable: false

      field :last_updated, -> { String }, optional: true, nullable: false, api_name: "lastUpdated"

      field :mfa, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :mfa_mode, -> { Integer }, optional: true, nullable: false, api_name: "mfaMode"

      field :pageindentifier, -> { String }, optional: true, nullable: false

      field :parent_org_id, -> { Integer }, optional: true, nullable: false, api_name: "parentOrgId"

      field :parent_org_name, -> { String }, optional: true, nullable: false, api_name: "parentOrgName"

      field :paypoint_dbaname, -> { String }, optional: true, nullable: false, api_name: "paypointDbaname"

      field :paypoint_entryname, -> { String }, optional: true, nullable: false, api_name: "paypointEntryname"

      field :paypoint_legalname, -> { String }, optional: true, nullable: false, api_name: "paypointLegalname"

      field :phone, -> { String }, optional: true, nullable: false

      field :shipping_address, -> { String }, optional: true, nullable: false, api_name: "shippingAddress"

      field :shipping_address_1, -> { String }, optional: true, nullable: false, api_name: "shippingAddress1"

      field :shipping_city, -> { String }, optional: true, nullable: false, api_name: "shippingCity"

      field :shipping_country, -> { String }, optional: true, nullable: false, api_name: "shippingCountry"

      field :shipping_state, -> { String }, optional: true, nullable: false, api_name: "shippingState"

      field :shipping_zip, -> { String }, optional: true, nullable: false, api_name: "shippingZip"

      field :sn_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "snData"

      field :sn_identifier, -> { String }, optional: true, nullable: false, api_name: "snIdentifier"

      field :sn_provider, -> { String }, optional: true, nullable: false, api_name: "snProvider"

      field :state, -> { String }, optional: true, nullable: false

      field :stored_methods, -> { Internal::Types::Array[Payabli::Types::MethodQueryRecords] }, optional: true, nullable: false, api_name: "storedMethods"

      field :subscriptions, -> { Internal::Types::Array[Payabli::Types::SubscriptionQueryRecords] }, optional: true, nullable: false

      field :time_zone, -> { Integer }, optional: true, nullable: false, api_name: "timeZone"

      field :zip, -> { String }, optional: true, nullable: false
    end
  end
end
