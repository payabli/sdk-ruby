# frozen_string_literal: true

module PayabliSdk
  module TokenStorage
    module Types
      class GetMethodResponseResponseDataVendorsItem < Internal::Types::Model
        field :additional_data, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false, api_name: "additionalData"
        field :address_1, -> { String }, optional: true, nullable: false, api_name: "address1"
        field :address_2, -> { String }, optional: true, nullable: false, api_name: "address2"
        field :billing_data, -> { PayabliSdk::Types::VendorResponseBillingData }, optional: true, nullable: false, api_name: "billingData"
        field :city, -> { String }, optional: true, nullable: false
        field :contacts, -> { Internal::Types::Array[PayabliSdk::Types::Contacts] }, optional: true, nullable: false
        field :country, -> { String }, optional: true, nullable: false
        field :created_date, -> { String }, optional: true, nullable: false, api_name: "createdDate"
        field :custom_field_1, -> { String }, optional: true, nullable: false, api_name: "customField1"
        field :custom_field_2, -> { String }, optional: true, nullable: false, api_name: "customField2"
        field :customer_vendor_account, -> { String }, optional: true, nullable: false, api_name: "customerVendorAccount"
        field :ein, -> { String }, optional: true, nullable: false
        field :email, -> { String }, optional: true, nullable: false
        field :enrollment_status, -> { String }, optional: true, nullable: false, api_name: "enrollmentStatus"
        field :external_paypoint_id, -> { String }, optional: true, nullable: false, api_name: "externalPaypointID"
        field :internal_reference_id, -> { Integer }, optional: true, nullable: false, api_name: "internalReferenceId"
        field :last_updated, -> { String }, optional: true, nullable: false, api_name: "lastUpdated"
        field :location_code, -> { String }, optional: true, nullable: false, api_name: "locationCode"
        field :mcc, -> { String }, optional: true, nullable: false
        field :name_1, -> { String }, optional: true, nullable: false, api_name: "name1"
        field :name_2, -> { String }, optional: true, nullable: false, api_name: "name2"
        field :parent_org_id, -> { Integer }, optional: true, nullable: false, api_name: "parentOrgId"
        field :parent_org_name, -> { String }, optional: true, nullable: false, api_name: "parentOrgName"
        field :payee_name_1, -> { String }, optional: true, nullable: false, api_name: "payeeName1"
        field :payee_name_2, -> { String }, optional: true, nullable: false, api_name: "payeeName2"
        field :payment_method, -> { String }, optional: true, nullable: false, api_name: "paymentMethod"
        field :paypoint_dbaname, -> { String }, optional: true, nullable: false, api_name: "paypointDbaname"
        field :paypoint_entryname, -> { String }, optional: true, nullable: false, api_name: "paypointEntryname"
        field :paypoint_id, -> { String }, optional: true, nullable: false, api_name: "paypointId"
        field :paypoint_legalname, -> { String }, optional: true, nullable: false, api_name: "paypointLegalname"
        field :phone, -> { String }, optional: true, nullable: false
        field :remit_address_1, -> { String }, optional: true, nullable: false, api_name: "remitAddress1"
        field :remit_address_2, -> { String }, optional: true, nullable: false, api_name: "remitAddress2"
        field :remit_city, -> { String }, optional: true, nullable: false, api_name: "remitCity"
        field :remit_country, -> { String }, optional: true, nullable: false, api_name: "remitCountry"
        field :remit_email, -> { String }, optional: true, nullable: false, api_name: "remitEmail"
        field :remit_state, -> { String }, optional: true, nullable: false, api_name: "remitState"
        field :remit_zip, -> { String }, optional: true, nullable: false, api_name: "remitZip"
        field :state, -> { String }, optional: true, nullable: false
        field :stored_methods, -> { Internal::Types::Array[PayabliSdk::Types::VendorResponseStoredMethod] }, optional: true, nullable: false, api_name: "storedMethods"
        field :summary, -> { PayabliSdk::Types::VendorResponseSummary }, optional: true, nullable: false
        field :vendor_id, -> { Integer }, optional: true, nullable: false, api_name: "vendorId"
        field :vendor_number, -> { String }, optional: true, nullable: false, api_name: "vendorNumber"
        field :vendor_status, -> { Integer }, optional: true, nullable: false, api_name: "vendorStatus"
        field :zip, -> { String }, optional: true, nullable: false
      end
    end
  end
end
