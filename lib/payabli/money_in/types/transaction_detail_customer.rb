# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      # Customer information associated with the transaction
      class TransactionDetailCustomer < Internal::Types::Model
        field :identifiers, -> { Internal::Types::Array[String] }, optional: false, nullable: true
        field :first_name, -> { String }, optional: false, nullable: false, api_name: "firstName"
        field :last_name, -> { String }, optional: false, nullable: false, api_name: "lastName"
        field :company_name, -> { String }, optional: false, nullable: false, api_name: "companyName"
        field :billing_address_1, -> { String }, optional: false, nullable: false, api_name: "billingAddress1"
        field :billing_address_2, -> { String }, optional: false, nullable: false, api_name: "billingAddress2"
        field :billing_city, -> { String }, optional: false, nullable: false, api_name: "billingCity"
        field :billing_state, -> { String }, optional: false, nullable: false, api_name: "billingState"
        field :billing_zip, -> { String }, optional: false, nullable: false, api_name: "billingZip"
        field :billing_country, -> { String }, optional: false, nullable: false, api_name: "billingCountry"
        field :billing_phone, -> { String }, optional: false, nullable: false, api_name: "billingPhone"
        field :billing_email, -> { String }, optional: false, nullable: false, api_name: "billingEmail"
        field :customer_number, -> { String }, optional: false, nullable: false, api_name: "customerNumber"
        field :shipping_address_1, -> { String }, optional: false, nullable: false, api_name: "shippingAddress1"
        field :shipping_address_2, -> { String }, optional: false, nullable: false, api_name: "shippingAddress2"
        field :shipping_city, -> { String }, optional: false, nullable: false, api_name: "shippingCity"
        field :shipping_state, -> { String }, optional: false, nullable: false, api_name: "shippingState"
        field :shipping_zip, -> { String }, optional: false, nullable: false, api_name: "shippingZip"
        field :shipping_country, -> { String }, optional: false, nullable: false, api_name: "shippingCountry"
        field :customer_id, -> { Integer }, optional: false, nullable: false, api_name: "customerId"
        field :customer_status, -> { Integer }, optional: false, nullable: false, api_name: "customerStatus"
        field :additional_data, -> { String }, optional: false, nullable: true, api_name: "additionalData"
      end
    end
  end
end
