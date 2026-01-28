# frozen_string_literal: true

module Payabli
  module Types
    # Data about a single customer.
    class CustomerData < Internal::Types::Model
      field :customer_number, -> { String }, optional: true, nullable: false, api_name: "customerNumber"
      field :customer_username, -> { String }, optional: true, nullable: false, api_name: "customerUsername"
      field :customer_psw, -> { String }, optional: true, nullable: false, api_name: "customerPsw"
      field :customer_status, -> { Integer }, optional: true, nullable: false, api_name: "customerStatus"
      field :company, -> { String }, optional: true, nullable: false
      field :firstname, -> { String }, optional: true, nullable: false
      field :lastname, -> { String }, optional: true, nullable: false
      field :phone, -> { String }, optional: true, nullable: false
      field :email, -> { String }, optional: true, nullable: false
      field :address, -> { String }, optional: true, nullable: false
      field :address_1, -> { String }, optional: true, nullable: false, api_name: "address1"
      field :city, -> { String }, optional: true, nullable: false
      field :state, -> { String }, optional: true, nullable: false
      field :zip, -> { String }, optional: true, nullable: false
      field :country, -> { String }, optional: true, nullable: false
      field :shipping_address, -> { String }, optional: true, nullable: false, api_name: "shippingAddress"
      field :shipping_address_1, -> { String }, optional: true, nullable: false, api_name: "shippingAddress1"
      field :shipping_city, -> { String }, optional: true, nullable: false, api_name: "shippingCity"
      field :shipping_state, -> { String }, optional: true, nullable: false, api_name: "shippingState"
      field :shipping_zip, -> { String }, optional: true, nullable: false, api_name: "shippingZip"
      field :shipping_country, -> { String }, optional: true, nullable: false, api_name: "shippingCountry"
      field :balance, -> { Integer }, optional: true, nullable: false
      field :time_zone, -> { Integer }, optional: true, nullable: false, api_name: "timeZone"
      field :additional_fields, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false, api_name: "additionalFields"
      field :identifier_fields, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "identifierFields"
      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"
    end
  end
end
