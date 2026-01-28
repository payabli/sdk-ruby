# frozen_string_literal: true

module Payabli
  module TokenStorage
    module Types
      class RequestTokenStorage < Internal::Types::Model
        field :customer_data, -> { Payabli::Types::PayorDataRequest }, optional: true, nullable: false, api_name: "customerData"
        field :entry_point, -> { String }, optional: true, nullable: false, api_name: "entryPoint"
        field :fallback_auth, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "fallbackAuth"
        field :fallback_auth_amount, -> { Integer }, optional: true, nullable: false, api_name: "fallbackAuthAmount"
        field :method_description, -> { String }, optional: true, nullable: false, api_name: "methodDescription"
        field :payment_method, -> { Payabli::TokenStorage::Types::RequestTokenStoragePaymentMethod }, optional: true, nullable: false, api_name: "paymentMethod"
        field :vendor_data, -> { Payabli::TokenStorage::Types::VendorDataRequest }, optional: true, nullable: false, api_name: "vendorData"
        field :source, -> { String }, optional: true, nullable: false
        field :subdomain, -> { String }, optional: true, nullable: false
      end
    end
  end
end
