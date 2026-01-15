# frozen_string_literal: true

module PayabliSdk
  module TokenStorage
    module Types
      class GetMethodResponseResponseDataCustomersItem < Internal::Types::Model
        field :balance, -> { Integer }, optional: true, nullable: false
        field :created, -> { String }, optional: true, nullable: false
        field :customer_consent, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "customerConsent"
        field :customer_status, -> { Integer }, optional: true, nullable: false, api_name: "customerStatus"
        field :customer_summary, -> { PayabliSdk::Types::CustomerSummaryRecord }, optional: true, nullable: false, api_name: "customerSummary"
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
        field :stored_methods, -> { Internal::Types::Array[PayabliSdk::Types::MethodQueryRecords] }, optional: true, nullable: false, api_name: "storedMethods"
        field :subscriptions, -> { Internal::Types::Array[PayabliSdk::Types::SubscriptionQueryRecords] }, optional: true, nullable: false
        field :time_zone, -> { Integer }, optional: true, nullable: false, api_name: "timeZone"
      end
    end
  end
end
