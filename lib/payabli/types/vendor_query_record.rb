# frozen_string_literal: true

module Payabli
  module Types
    class VendorQueryRecord < Internal::Types::Model
      field :vendor_number, -> { String }, optional: false, nullable: false, api_name: "VendorNumber"

      field :name_1, -> { String }, optional: false, nullable: false, api_name: "Name1"

      field :name_2, -> { String }, optional: false, nullable: true, api_name: "Name2"

      field :ein, -> { String }, optional: false, nullable: true, api_name: "EIN"

      field :phone, -> { String }, optional: false, nullable: true, api_name: "Phone"

      field :email, -> { String }, optional: false, nullable: true, api_name: "Email"

      field :remit_email, -> { String }, optional: false, nullable: true, api_name: "RemitEmail"

      field :address_1, -> { String }, optional: false, nullable: true, api_name: "Address1"

      field :address_2, -> { String }, optional: false, nullable: true, api_name: "Address2"

      field :city, -> { String }, optional: false, nullable: true, api_name: "City"

      field :state, -> { String }, optional: false, nullable: true, api_name: "State"

      field :zip, -> { String }, optional: false, nullable: true, api_name: "Zip"

      field :country, -> { String }, optional: false, nullable: true, api_name: "Country"

      field :mcc, -> { String }, optional: false, nullable: true, api_name: "Mcc"

      field :location_code, -> { String }, optional: false, nullable: true, api_name: "LocationCode"

      field :issue_1099, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "Issue1099"

      field :contacts, -> { Internal::Types::Array[Payabli::Types::ContactsResponse] }, optional: false, nullable: true, api_name: "Contacts"

      field :billing_data, -> { Payabli::Types::BillingDataResponse }, optional: false, nullable: true, api_name: "BillingData"

      field :payment_method, -> { String }, optional: false, nullable: true, api_name: "PaymentMethod"

      field :vendor_status, -> { Integer }, optional: false, nullable: false, api_name: "VendorStatus"

      field :vendor_id, -> { Integer }, optional: false, nullable: false, api_name: "VendorId"

      field :enrollment_status, -> { String }, optional: false, nullable: true, api_name: "EnrollmentStatus"

      field :summary, -> { Payabli::Types::VendorSummary }, optional: false, nullable: true, api_name: "Summary"

      field :paypoint_legalname, -> { String }, optional: false, nullable: false, api_name: "PaypointLegalname"

      field :paypoint_id, -> { Integer }, optional: false, nullable: true, api_name: "PaypointId"

      field :paypoint_dbaname, -> { String }, optional: false, nullable: false, api_name: "PaypointDbaname"

      field :paypoint_entryname, -> { String }, optional: false, nullable: false, api_name: "PaypointEntryname"

      field :parent_org_name, -> { String }, optional: false, nullable: false, api_name: "ParentOrgName"

      field :parent_org_id, -> { Integer }, optional: false, nullable: false, api_name: "ParentOrgId"

      field :created_date, -> { String }, optional: false, nullable: false, api_name: "CreatedDate"

      field :last_updated, -> { String }, optional: false, nullable: false, api_name: "LastUpdated"

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

      field :internal_reference_id, -> { Integer }, optional: false, nullable: false, api_name: "InternalReferenceId"

      field :payment_portal_url, -> { String }, optional: false, nullable: true, api_name: "PaymentPortalUrl"

      field :card_accepted, -> { String }, optional: false, nullable: true, api_name: "CardAccepted"

      field :ach_accepted, -> { String }, optional: false, nullable: true, api_name: "AchAccepted"

      field :check_accepted, -> { String }, optional: false, nullable: true, api_name: "CheckAccepted"

      field :enrichment_status, -> { String }, optional: false, nullable: false, api_name: "EnrichmentStatus"

      field :enriched_by, -> { String }, optional: false, nullable: true, api_name: "EnrichedBy"

      field :enriched_at, -> { String }, optional: false, nullable: true, api_name: "EnrichedAt"

      field :enrichment_id, -> { String }, optional: false, nullable: true, api_name: "EnrichmentId"

      field :additional_data, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: true, api_name: "additionalData"

      field :external_paypoint_id, -> { String }, optional: false, nullable: true, api_name: "externalPaypointID"

      field :stored_methods, -> { Internal::Types::Array[Payabli::Types::VendorStoredMethod] }, optional: false, nullable: true, api_name: "StoredMethods"

      field :vendor_portal, -> { Payabli::Types::VendorPortalAccess }, optional: true, nullable: false, api_name: "VendorPortal"
    end
  end
end
