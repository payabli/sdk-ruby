# frozen_string_literal: true

module Payabli
  module Types
    class QueryTransactionPayorDataCustomer < Internal::Types::Model
      field :identifiers, -> { Internal::Types::Array[Object] }, optional: true, nullable: false, api_name: "Identifiers"
      field :first_name, -> { String }, optional: true, nullable: false, api_name: "FirstName"
      field :last_name, -> { String }, optional: true, nullable: false, api_name: "LastName"
      field :company_name, -> { String }, optional: true, nullable: false, api_name: "CompanyName"
      field :billing_address_1, -> { String }, optional: true, nullable: false, api_name: "BillingAddress1"
      field :billing_address_2, -> { String }, optional: true, nullable: false, api_name: "BillingAddress2"
      field :billing_city, -> { String }, optional: true, nullable: false, api_name: "BillingCity"
      field :billing_state, -> { String }, optional: true, nullable: false, api_name: "BillingState"
      field :billing_zip, -> { String }, optional: true, nullable: false, api_name: "BillingZip"
      field :billing_country, -> { String }, optional: true, nullable: false, api_name: "BillingCountry"
      field :billing_phone, -> { String }, optional: true, nullable: false, api_name: "BillingPhone"
      field :billing_email, -> { String }, optional: true, nullable: false, api_name: "BillingEmail"
      field :customer_number, -> { String }, optional: true, nullable: false, api_name: "CustomerNumber"
      field :shipping_address_1, -> { String }, optional: true, nullable: false, api_name: "ShippingAddress1"
      field :shipping_address_2, -> { String }, optional: true, nullable: false, api_name: "ShippingAddress2"
      field :shipping_city, -> { String }, optional: true, nullable: false, api_name: "ShippingCity"
      field :shipping_state, -> { String }, optional: true, nullable: false, api_name: "ShippingState"
      field :shipping_zip, -> { String }, optional: true, nullable: false, api_name: "ShippingZip"
      field :shipping_country, -> { String }, optional: true, nullable: false, api_name: "ShippingCountry"
      field :customer_id, -> { Integer }, optional: true, nullable: false, api_name: "customerId"
      field :customer_status, -> { Integer }, optional: true, nullable: false, api_name: "customerStatus"
      field :additional_data, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false, api_name: "AdditionalData"
    end
  end
end
