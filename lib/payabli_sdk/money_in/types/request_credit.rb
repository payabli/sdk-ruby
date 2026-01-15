# frozen_string_literal: true

module PayabliSdk
  module MoneyIn
    module Types
      class RequestCredit < Internal::Types::Model
        field :force_customer_creation, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "forceCustomerCreation"
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :account_id, -> { String }, optional: true, nullable: false, api_name: "accountId"
        field :customer_data, -> { PayabliSdk::Types::PayorDataRequest }, optional: false, nullable: false, api_name: "customerData"
        field :entrypoint, -> { String }, optional: true, nullable: false
        field :order_description, -> { String }, optional: true, nullable: false, api_name: "orderDescription"
        field :order_id, -> { String }, optional: true, nullable: false, api_name: "orderId"
        field :payment_details, -> { PayabliSdk::Types::PaymentDetailCredit }, optional: false, nullable: false, api_name: "paymentDetails"
        field :payment_method, -> { PayabliSdk::MoneyIn::Types::RequestCreditPaymentMethod }, optional: false, nullable: false, api_name: "paymentMethod"
        field :source, -> { String }, optional: true, nullable: false
        field :subdomain, -> { String }, optional: true, nullable: false
      end
    end
  end
end
