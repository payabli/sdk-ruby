# frozen_string_literal: true

module Payabli
  module Types
    class VendorOutData < Internal::Types::Model
      field :additional_data, lambda {
        Internal::Types::Hash[String, Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]]
      }, optional: true, nullable: false, api_name: "additionalData"
      field :address_1, -> { String }, optional: true, nullable: false, api_name: "Address1"
      field :address_2, -> { String }, optional: true, nullable: false, api_name: "Address2"
      field :billing_data, -> { Payabli::Types::BillingData }, optional: true, nullable: false, api_name: "BillingData"
      field :city, -> { String }, optional: false, nullable: false, api_name: "City"
      field :contacts, lambda {
        Internal::Types::Array[Payabli::Types::Contacts]
      }, optional: true, nullable: false, api_name: "Contacts"
      field :country, -> { String }, optional: false, nullable: false, api_name: "Country"
      field :customer_vendor_account, -> { String }, optional: true, nullable: false, api_name: "customerVendorAccount"
      field :ein, -> { String }, optional: false, nullable: false, api_name: "EIN"
      field :email, -> { String }, optional: true, nullable: false, api_name: "Email"
      field :internal_reference_id, -> { Integer }, optional: true, nullable: false, api_name: "InternalReferenceId"
      field :location_code, -> { String }, optional: true, nullable: false, api_name: "LocationCode"
      field :mcc, -> { String }, optional: true, nullable: false, api_name: "Mcc"
      field :name_1, -> { String }, optional: false, nullable: false, api_name: "Name1"
      field :name_2, -> { String }, optional: true, nullable: false, api_name: "Name2"
      field :payee_name_1, -> { String }, optional: true, nullable: false, api_name: "payeeName1"
      field :payee_name_2, -> { String }, optional: true, nullable: false, api_name: "payeeName2"
      field :payment_method, lambda {
        Payabli::Types::VendorPaymentMethod
      }, optional: true, nullable: false, api_name: "PaymentMethod"
      field :phone, -> { String }, optional: false, nullable: false, api_name: "Phone"
      field :remit_address_1, -> { String }, optional: true, nullable: false, api_name: "remitAddress1"
      field :remit_address_2, -> { String }, optional: true, nullable: false, api_name: "remitAddress2"
      field :remit_city, -> { String }, optional: true, nullable: false, api_name: "remitCity"
      field :remit_country, -> { String }, optional: true, nullable: false, api_name: "remitCountry"
      field :remit_state, -> { String }, optional: true, nullable: false, api_name: "remitState"
      field :remit_zip, -> { String }, optional: true, nullable: false, api_name: "remitZip"
      field :state, -> { String }, optional: false, nullable: false, api_name: "State"
      field :vendor_id, -> { Integer }, optional: true, nullable: false, api_name: "VendorId"
      field :vendor_number, -> { String }, optional: true, nullable: false, api_name: "VendorNumber"
      field :vendor_status, -> { Integer }, optional: true, nullable: false, api_name: "VendorStatus"
      field :zip, -> { String }, optional: false, nullable: false, api_name: "Zip"
    end
  end
end
