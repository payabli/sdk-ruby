# frozen_string_literal: true

module Payabli
  module Types
    # Customer information.
    class PayorDataResponse < Internal::Types::Model
      field :additional_data, lambda {
        Internal::Types::Hash[String, Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]]
      }, optional: false, nullable: true, api_name: "AdditionalData"
      field :billing_address_1, -> { String }, optional: false, nullable: true, api_name: "BillingAddress1"
      field :billing_address_2, -> { String }, optional: false, nullable: true, api_name: "BillingAddress2"
      field :billing_city, -> { String }, optional: false, nullable: true, api_name: "BillingCity"
      field :billing_country, -> { String }, optional: false, nullable: true, api_name: "BillingCountry"
      field :billing_email, -> { String }, optional: false, nullable: true, api_name: "BillingEmail"
      field :billing_phone, -> { String }, optional: false, nullable: true, api_name: "BillingPhone"
      field :billing_state, -> { String }, optional: false, nullable: true, api_name: "BillingState"
      field :billing_zip, -> { String }, optional: false, nullable: true, api_name: "BillingZip"
      field :company_name, -> { String }, optional: false, nullable: true, api_name: "CompanyName"
      field :customer_id, -> { Integer }, optional: false, nullable: true, api_name: "customerId"
      field :customer_number, -> { String }, optional: false, nullable: true, api_name: "CustomerNumber"
      field :customer_status, -> { Integer }, optional: false, nullable: true, api_name: "customerStatus"
      field :first_name, -> { String }, optional: false, nullable: true, api_name: "FirstName"
      field :identifiers, lambda {
        Internal::Types::Array[String]
      }, optional: false, nullable: true, api_name: "Identifiers"
      field :last_name, -> { String }, optional: false, nullable: true, api_name: "LastName"
      field :shipping_address_1, -> { String }, optional: false, nullable: true, api_name: "ShippingAddress1"
      field :shipping_address_2, -> { String }, optional: false, nullable: true, api_name: "ShippingAddress2"
      field :shipping_city, -> { String }, optional: false, nullable: true, api_name: "ShippingCity"
      field :shipping_country, -> { String }, optional: false, nullable: true, api_name: "ShippingCountry"
      field :shipping_state, -> { String }, optional: false, nullable: true, api_name: "ShippingState"
      field :shipping_zip, -> { String }, optional: false, nullable: true, api_name: "ShippingZip"
    end
  end
end
