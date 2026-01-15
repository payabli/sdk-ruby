# frozen_string_literal: true

module PayabliSdk
  module Ocr
    module Types
      class OcrVendor < Internal::Types::Model
        field :vendor_number, -> { String }, optional: true, nullable: false, api_name: "vendorNumber"
        field :name_1, -> { String }, optional: true, nullable: false, api_name: "name1"
        field :name_2, -> { String }, optional: true, nullable: false, api_name: "name2"
        field :ein, -> { String }, optional: true, nullable: false
        field :phone, -> { String }, optional: true, nullable: false
        field :email, -> { String }, optional: true, nullable: false
        field :address_1, -> { String }, optional: true, nullable: false, api_name: "address1"
        field :address_2, -> { String }, optional: true, nullable: false, api_name: "address2"
        field :city, -> { String }, optional: true, nullable: false
        field :state, -> { String }, optional: true, nullable: false
        field :zip, -> { String }, optional: true, nullable: false
        field :country, -> { String }, optional: true, nullable: false
        field :mcc, -> { String }, optional: true, nullable: false
        field :location_code, -> { String }, optional: true, nullable: false, api_name: "locationCode"
        field :contacts, -> { Internal::Types::Array[PayabliSdk::Types::Contacts] }, optional: true, nullable: false
        field :billing_data, -> { PayabliSdk::Ocr::Types::OcrVendorBillingData }, optional: true, nullable: false, api_name: "billingData"
        field :payment_method, -> { String }, optional: true, nullable: false, api_name: "paymentMethod"
        field :vendor_status, -> { Integer }, optional: true, nullable: false, api_name: "vendorStatus"
        field :remit_address_1, -> { String }, optional: true, nullable: false, api_name: "remitAddress1"
        field :remit_address_2, -> { String }, optional: true, nullable: false, api_name: "remitAddress2"
        field :remit_city, -> { String }, optional: true, nullable: false, api_name: "remitCity"
        field :remit_state, -> { String }, optional: true, nullable: false, api_name: "remitState"
        field :remit_zip, -> { String }, optional: true, nullable: false, api_name: "remitZip"
        field :remit_country, -> { String }, optional: true, nullable: false, api_name: "remitCountry"
        field :payee_name_1, -> { String }, optional: true, nullable: false, api_name: "payeeName1"
        field :payee_name_2, -> { String }, optional: true, nullable: false, api_name: "payeeName2"
        field :customer_vendor_account, -> { String }, optional: true, nullable: false, api_name: "customerVendorAccount"
        field :internal_reference_id, -> { Integer }, optional: true, nullable: false, api_name: "internalReferenceId"
        field :custom_field_1, -> { String }, optional: true, nullable: false, api_name: "customField1"
        field :custom_field_2, -> { String }, optional: true, nullable: false, api_name: "customField2"
        field :additional_data, -> { PayabliSdk::Ocr::Types::OcrVendorAdditionalData }, optional: true, nullable: false, api_name: "additionalData"
      end
    end
  end
end
