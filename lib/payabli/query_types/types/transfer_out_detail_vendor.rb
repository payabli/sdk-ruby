# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # Vendor information for an outbound transfer detail.
      class TransferOutDetailVendor < Internal::Types::Model
        field :vendor_number, -> { String }, optional: false, nullable: true, api_name: "VendorNumber"
        field :name_1, -> { String }, optional: false, nullable: true, api_name: "Name1"
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
        field :contacts, -> { Internal::Types::Array[Payabli::Types::ContactsResponse] }, optional: false, nullable: true, api_name: "Contacts"
        field :billing_data, -> { Payabli::QueryTypes::Types::TransferOutDetailVendorBillingData }, optional: false, nullable: true, api_name: "BillingData"
        field :payment_method, -> { String }, optional: false, nullable: true, api_name: "PaymentMethod"
        field :vendor_status, -> { Integer }, optional: false, nullable: true, api_name: "VendorStatus"
        field :vendor_id, -> { Integer }, optional: false, nullable: true, api_name: "VendorId"
        field :enrollment_status, -> { Integer }, optional: false, nullable: true, api_name: "EnrollmentStatus"
        field :summary, -> { String }, optional: false, nullable: true, api_name: "Summary"
        field :paypoint_legalname, -> { String }, optional: false, nullable: true, api_name: "PaypointLegalname"
        field :paypoint_id, -> { Integer }, optional: false, nullable: true, api_name: "PaypointId"
        field :paypoint_dbaname, -> { String }, optional: false, nullable: true, api_name: "PaypointDbaname"
        field :paypoint_entryname, -> { String }, optional: false, nullable: true, api_name: "PaypointEntryname"
        field :parent_org_name, -> { String }, optional: false, nullable: true, api_name: "ParentOrgName"
        field :parent_org_id, -> { Integer }, optional: false, nullable: true, api_name: "ParentOrgId"
        field :created_date, -> { String }, optional: false, nullable: true, api_name: "CreatedDate"
        field :last_updated, -> { String }, optional: false, nullable: true, api_name: "LastUpdated"
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
        field :internal_reference_id, -> { Integer }, optional: false, nullable: true, api_name: "InternalReferenceId"
        field :additional_data, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true, api_name: "additionalData"
        field :external_paypoint_id, -> { String }, optional: false, nullable: true, api_name: "externalPaypointID"
        field :stored_methods, -> { Internal::Types::Array[Object] }, optional: false, nullable: true, api_name: "StoredMethods"
      end
    end
  end
end
