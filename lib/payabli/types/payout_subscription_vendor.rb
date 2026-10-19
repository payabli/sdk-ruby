# frozen_string_literal: true

module Payabli
  module Types
    # The vendor associated with the payout subscription.
    class PayoutSubscriptionVendor < Internal::Types::Model
      field :vendor_number, -> { String }, optional: false, nullable: false, api_name: "vendorNumber"

      field :name_1, -> { String }, optional: false, nullable: false, api_name: "name1"

      field :name_2, -> { String }, optional: false, nullable: true, api_name: "name2"

      field :ein, -> { String }, optional: false, nullable: true

      field :phone, -> { String }, optional: false, nullable: true

      field :email, -> { String }, optional: false, nullable: true

      field :remit_email, -> { String }, optional: false, nullable: true, api_name: "remitEmail"

      field :address_1, -> { String }, optional: false, nullable: true, api_name: "address1"

      field :address_2, -> { String }, optional: false, nullable: true, api_name: "address2"

      field :city, -> { String }, optional: false, nullable: true

      field :state, -> { String }, optional: false, nullable: true

      field :zip, -> { String }, optional: false, nullable: true

      field :country, -> { String }, optional: false, nullable: true

      field :mcc, -> { String }, optional: false, nullable: true

      field :location_code, -> { String }, optional: false, nullable: true, api_name: "locationCode"

      field :issue_1099, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "issue1099"

      field :contacts, -> { Internal::Types::Array[Payabli::Types::PayoutSubscriptionVendorContact] }, optional: false, nullable: true

      field :billing_data, -> { Payabli::Types::BillingDataResponse }, optional: false, nullable: true, api_name: "billingData"

      field :payment_method, -> { String }, optional: false, nullable: true, api_name: "paymentMethod"

      field :vendor_status, -> { Integer }, optional: false, nullable: false, api_name: "vendorStatus"

      field :vendor_id, -> { Integer }, optional: false, nullable: false, api_name: "vendorId"

      field :enrollment_status, -> { String }, optional: false, nullable: true, api_name: "enrollmentStatus"

      field :summary, -> { Payabli::Types::VendorSummary }, optional: false, nullable: true

      field :paypoint_legalname, -> { String }, optional: false, nullable: false, api_name: "paypointLegalname"

      field :paypoint_id, -> { Integer }, optional: false, nullable: true, api_name: "paypointId"

      field :paypoint_dbaname, -> { String }, optional: false, nullable: false, api_name: "paypointDbaname"

      field :paypoint_entryname, -> { String }, optional: false, nullable: false, api_name: "paypointEntryname"

      field :parent_org_name, -> { String }, optional: false, nullable: false, api_name: "parentOrgName"

      field :parent_org_id, -> { Integer }, optional: false, nullable: false, api_name: "parentOrgId"

      field :created_date, -> { String }, optional: false, nullable: false, api_name: "createdDate"

      field :last_updated, -> { String }, optional: false, nullable: false, api_name: "lastUpdated"

      field :remit_address_1, -> { String }, optional: false, nullable: true, api_name: "remitAddress1"

      field :remit_address_2, -> { String }, optional: false, nullable: true, api_name: "remitAddress2"

      field :remit_city, -> { String }, optional: false, nullable: true, api_name: "remitCity"

      field :remit_state, -> { String }, optional: false, nullable: true, api_name: "remitState"

      field :remit_zip, -> { String }, optional: false, nullable: true, api_name: "remitZip"

      field :remit_country, -> { String }, optional: false, nullable: true, api_name: "remitCountry"

      field :payee_name_1, -> { String }, optional: false, nullable: true, api_name: "payeeName1"

      field :payee_name_2, -> { String }, optional: false, nullable: true, api_name: "payeeName2"

      field :custom_field_1, -> { String }, optional: false, nullable: true, api_name: "customField1"

      field :custom_field_2, -> { String }, optional: false, nullable: true, api_name: "customField2"

      field :customer_vendor_account, -> { String }, optional: false, nullable: true, api_name: "customerVendorAccount"

      field :internal_reference_id, -> { Integer }, optional: false, nullable: false, api_name: "internalReferenceId"

      field :payment_portal_url, -> { String }, optional: false, nullable: true, api_name: "paymentPortalUrl"

      field :card_accepted, -> { String }, optional: false, nullable: true, api_name: "cardAccepted"

      field :ach_accepted, -> { String }, optional: false, nullable: true, api_name: "achAccepted"

      field :check_accepted, -> { String }, optional: false, nullable: true, api_name: "checkAccepted"

      field :enrichment_status, -> { String }, optional: false, nullable: false, api_name: "enrichmentStatus"

      field :enriched_by, -> { String }, optional: false, nullable: true, api_name: "enrichedBy"

      field :enriched_at, -> { String }, optional: false, nullable: true, api_name: "enrichedAt"

      field :enrichment_id, -> { String }, optional: false, nullable: true, api_name: "enrichmentId"

      field :additional_data, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: true, api_name: "additionalData"

      field :external_paypoint_id, -> { String }, optional: false, nullable: true, api_name: "externalPaypointID"

      field :stored_methods, -> { Internal::Types::Array[Payabli::Types::VendorResponseStoredMethod] }, optional: false, nullable: true, api_name: "storedMethods"

      field :vendor_portal, -> { Payabli::Types::PayoutSubscriptionVendorVendorPortal }, optional: false, nullable: true, api_name: "vendorPortal"
    end
  end
end
