# frozen_string_literal: true

module Payabli
  module Types
    # Customer information. May be required, depending on the paypoint's settings. Required for subscriptions.
    class PayorDataRequest < Internal::Types::Model
      field :additional_data, lambda {
        Internal::Types::Hash[String, Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]]
      }, optional: true, nullable: false, api_name: "additionalData"
      field :billing_address_1, -> { String }, optional: true, nullable: false, api_name: "billingAddress1"
      field :billing_address_2, -> { String }, optional: true, nullable: false, api_name: "billingAddress2"
      field :billing_city, -> { String }, optional: true, nullable: false, api_name: "billingCity"
      field :billing_country, -> { String }, optional: true, nullable: false, api_name: "billingCountry"
      field :billing_email, -> { String }, optional: true, nullable: false, api_name: "billingEmail"
      field :billing_phone, -> { String }, optional: true, nullable: false, api_name: "billingPhone"
      field :billing_state, -> { String }, optional: true, nullable: false, api_name: "billingState"
      field :billing_zip, -> { String }, optional: true, nullable: false, api_name: "billingZip"
      field :company, -> { String }, optional: true, nullable: false
      field :customer_id, -> { Integer }, optional: true, nullable: false, api_name: "customerId"
      field :customer_number, -> { String }, optional: true, nullable: false, api_name: "customerNumber"
      field :first_name, -> { String }, optional: true, nullable: false, api_name: "firstName"
      field :identifier_fields, lambda {
        Internal::Types::Array[String]
      }, optional: true, nullable: false, api_name: "identifierFields"
      field :last_name, -> { String }, optional: true, nullable: false, api_name: "lastName"
      field :shipping_address_1, -> { String }, optional: true, nullable: false, api_name: "shippingAddress1"
      field :shipping_address_2, -> { String }, optional: true, nullable: false, api_name: "shippingAddress2"
      field :shipping_city, -> { String }, optional: true, nullable: false, api_name: "shippingCity"
      field :shipping_country, -> { String }, optional: true, nullable: false, api_name: "shippingCountry"
      field :shipping_state, -> { String }, optional: true, nullable: false, api_name: "shippingState"
      field :shipping_zip, -> { String }, optional: true, nullable: false, api_name: "shippingZip"
    end
  end
end
