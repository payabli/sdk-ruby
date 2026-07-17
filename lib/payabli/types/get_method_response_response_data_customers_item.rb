# frozen_string_literal: true

module Payabli
  module Types
    class GetMethodResponseResponseDataCustomersItem < Internal::Types::Model
      field :additional_data, -> { Internal::Types::Hash[String, Internal::Types::Hash[String, Object]] }, optional: true, nullable: false, api_name: "additionalData"

      field :billing_address_1, -> { String }, optional: true, nullable: false, api_name: "billingAddress1"

      field :billing_address_2, -> { String }, optional: true, nullable: false, api_name: "billingAddress2"

      field :billing_city, -> { String }, optional: true, nullable: false, api_name: "billingCity"

      field :billing_country, -> { String }, optional: true, nullable: false, api_name: "billingCountry"

      field :billing_email, -> { String }, optional: true, nullable: false, api_name: "billingEmail"

      field :billing_phone, -> { String }, optional: true, nullable: false, api_name: "billingPhone"

      field :billing_state, -> { String }, optional: true, nullable: false, api_name: "billingState"

      field :billing_zip, -> { String }, optional: true, nullable: false, api_name: "billingZip"

      field :company, -> { String }, optional: true, nullable: false

      field :customer_id, -> { Integer }, optional: true, nullable: false, api_name: "customerId"

      field :customer_number, -> { String }, optional: true, nullable: false, api_name: "customerNumber"

      field :first_name, -> { String }, optional: true, nullable: false, api_name: "firstName"

      field :identifier_fields, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "identifierFields"

      field :last_name, -> { String }, optional: true, nullable: false, api_name: "lastName"

      field :shipping_address_1, -> { String }, optional: true, nullable: false, api_name: "shippingAddress1"

      field :shipping_address_2, -> { String }, optional: true, nullable: false, api_name: "shippingAddress2"

      field :shipping_city, -> { String }, optional: true, nullable: false, api_name: "shippingCity"

      field :shipping_country, -> { String }, optional: true, nullable: false, api_name: "shippingCountry"

      field :shipping_state, -> { String }, optional: true, nullable: false, api_name: "shippingState"

      field :shipping_zip, -> { String }, optional: true, nullable: false, api_name: "shippingZip"

      field :balance, -> { Integer }, optional: true, nullable: false

      field :created, -> { String }, optional: true, nullable: false

      field :customer_consent, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "customerConsent"

      field :customer_status, -> { Integer }, optional: true, nullable: false, api_name: "customerStatus"

      field :customer_summary, -> { Payabli::Types::CustomerSummaryRecord }, optional: true, nullable: false, api_name: "customerSummary"

      field :customer_username, -> { String }, optional: true, nullable: false, api_name: "customerUsername"

      field :external_paypoint_id, -> { String }, optional: true, nullable: false, api_name: "externalPaypointID"

      field :last_updated, -> { String }, optional: true, nullable: false, api_name: "lastUpdated"

      field :mfa, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :mfa_mode, -> { Integer }, optional: true, nullable: false, api_name: "mfaMode"

      field :pageindentifier, -> { String }, optional: true, nullable: false

      field :parent_org_id, -> { Integer }, optional: true, nullable: false, api_name: "parentOrgId"

      field :parent_org_name, -> { String }, optional: true, nullable: false, api_name: "parentOrgName"

      field :paypoint_dbaname, -> { String }, optional: true, nullable: false, api_name: "paypointDbaname"

      field :paypoint_entryname, -> { String }, optional: true, nullable: false, api_name: "paypointEntryname"

      field :paypoint_legalname, -> { String }, optional: true, nullable: false, api_name: "paypointLegalname"

      field :sn_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "snData"

      field :sn_identifier, -> { String }, optional: true, nullable: false, api_name: "snIdentifier"

      field :sn_provider, -> { String }, optional: true, nullable: false, api_name: "snProvider"

      field :stored_methods, -> { Internal::Types::Array[Payabli::Types::MethodQueryRecords] }, optional: true, nullable: false, api_name: "storedMethods"

      field :subscriptions, -> { Internal::Types::Array[Payabli::Types::SubscriptionQueryRecords] }, optional: true, nullable: false

      field :time_zone, -> { Integer }, optional: true, nullable: false, api_name: "timeZone"
    end
  end
end
