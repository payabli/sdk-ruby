# frozen_string_literal: true

module Payabli
  module MoneyOutTypes
    module Types
      # Object containing vendor data.
      class RequestOutAuthorizeVendorDataOld < Internal::Types::Model
        field :additional_data, lambda {
          Internal::Types::Hash[String, Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]]
        }, optional: true, nullable: false, api_name: "additionalData"
        field :address_1, -> { String }, optional: true, nullable: false, api_name: "address1"
        field :address_2, -> { String }, optional: true, nullable: false, api_name: "address2"
        field :billing_data, lambda {
          Payabli::Types::BillingData
        }, optional: true, nullable: false, api_name: "billingData"
        field :city, -> { String }, optional: true, nullable: false
        field :contacts, -> { Internal::Types::Array[Payabli::Types::Contacts] }, optional: true, nullable: false
        field :country, -> { String }, optional: true, nullable: false
        field :customer_vendor_account, lambda {
          String
        }, optional: true, nullable: false, api_name: "customerVendorAccount"
        field :custom_field_1, -> { String }, optional: true, nullable: false, api_name: "customField1"
        field :custom_field_2, -> { String }, optional: true, nullable: false, api_name: "customField2"
        field :ein, -> { String }, optional: true, nullable: false
        field :email, -> { String }, optional: true, nullable: false
        field :internal_reference_id, -> { Integer }, optional: true, nullable: false, api_name: "internalReferenceId"
        field :location_code, -> { String }, optional: true, nullable: false, api_name: "locationCode"
        field :mcc, -> { String }, optional: true, nullable: false
        field :name_1, -> { String }, optional: true, nullable: false, api_name: "name1"
        field :name_2, -> { String }, optional: true, nullable: false, api_name: "name2"
        field :payee_name_1, -> { String }, optional: true, nullable: false, api_name: "payeeName1"
        field :payee_name_2, -> { String }, optional: true, nullable: false, api_name: "payeeName2"
        field :payment_method, lambda {
          Payabli::Types::VendorPaymentMethod
        }, optional: true, nullable: false, api_name: "paymentMethod"
        field :phone, -> { String }, optional: true, nullable: false
        field :remit_address_1, -> { String }, optional: true, nullable: false, api_name: "remitAddress1"
        field :remit_address_2, -> { String }, optional: true, nullable: false, api_name: "remitAddress2"
        field :remit_city, -> { String }, optional: true, nullable: false, api_name: "remitCity"
        field :remit_country, -> { String }, optional: true, nullable: false, api_name: "remitCountry"
        field :remit_state, -> { String }, optional: true, nullable: false, api_name: "remitState"
        field :remit_zip, -> { String }, optional: true, nullable: false, api_name: "remitZip"
        field :state, -> { String }, optional: true, nullable: false
        field :vendor_id, -> { Integer }, optional: true, nullable: false, api_name: "vendorId"
        field :vendor_number, -> { String }, optional: true, nullable: false, api_name: "vendorNumber"
        field :vendor_status, -> { Integer }, optional: true, nullable: false, api_name: "vendorStatus"
        field :zip, -> { String }, optional: true, nullable: false
      end
    end
  end
end
