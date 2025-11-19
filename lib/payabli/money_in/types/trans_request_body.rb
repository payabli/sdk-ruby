# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      class TransRequestBody < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false, api_name: "accountId"
        field :customer_data, lambda {
          Payabli::Types::PayorDataRequest
        }, optional: true, nullable: false, api_name: "customerData"
        field :entry_point, -> { String }, optional: true, nullable: false, api_name: "entryPoint"
        field :invoice_data, -> { Payabli::Types::BillData }, optional: true, nullable: false, api_name: "invoiceData"
        field :ipaddress, -> { String }, optional: true, nullable: false
        field :order_description, -> { String }, optional: true, nullable: false, api_name: "orderDescription"
        field :order_id, -> { String }, optional: true, nullable: false, api_name: "orderId"
        field :payment_details, lambda {
          Payabli::Types::PaymentDetail
        }, optional: false, nullable: false, api_name: "paymentDetails"
        field :payment_method, lambda {
          Payabli::Types::PaymentMethod
        }, optional: false, nullable: false, api_name: "paymentMethod"
        field :source, -> { String }, optional: true, nullable: false
        field :subdomain, -> { String }, optional: true, nullable: false
        field :subscription_id, -> { Integer }, optional: true, nullable: false, api_name: "subscriptionId"
      end
    end
  end
end
