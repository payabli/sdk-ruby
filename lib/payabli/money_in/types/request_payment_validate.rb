# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      class RequestPaymentValidate < Internal::Types::Model
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :account_id, -> { String }, optional: true, nullable: false, api_name: "accountId"
        field :entry_point, -> { String }, optional: false, nullable: false, api_name: "entryPoint"
        field :order_description, -> { String }, optional: true, nullable: false, api_name: "orderDescription"
        field :order_id, -> { String }, optional: true, nullable: false, api_name: "orderId"
        field :payment_method, lambda {
          Payabli::MoneyIn::Types::RequestPaymentValidatePaymentMethod
        }, optional: false, nullable: false, api_name: "paymentMethod"
      end
    end
  end
end
