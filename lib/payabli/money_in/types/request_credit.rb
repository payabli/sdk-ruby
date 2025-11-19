# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      class RequestCredit < Internal::Types::Model
        field :force_customer_creation, lambda {
          Internal::Types::Boolean
        }, optional: true, nullable: false, api_name: "forceCustomerCreation"
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :account_id, -> { String }, optional: true, nullable: false, api_name: "accountId"
        field :customer_data, lambda {
          Payabli::Types::PayorDataRequest
        }, optional: false, nullable: false, api_name: "customerData"
        field :entrypoint, -> { String }, optional: true, nullable: false
        field :order_description, -> { String }, optional: true, nullable: false, api_name: "orderDescription"
        field :order_id, -> { String }, optional: true, nullable: false, api_name: "orderId"
        field :payment_details, lambda {
          Payabli::Types::PaymentDetailCredit
        }, optional: false, nullable: false, api_name: "paymentDetails"
        field :payment_method, lambda {
          Payabli::MoneyIn::Types::RequestCreditPaymentMethod
        }, optional: false, nullable: false, api_name: "paymentMethod"
        field :source, -> { String }, optional: true, nullable: false
        field :subdomain, -> { String }, optional: true, nullable: false
      end
    end
  end
end
