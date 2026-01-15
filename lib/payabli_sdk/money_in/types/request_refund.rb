# frozen_string_literal: true

module PayabliSdk
  module MoneyIn
    module Types
      class RequestRefund < Internal::Types::Model
        field :trans_id, -> { String }, optional: false, nullable: false, api_name: "transId"
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :amount, -> { Integer }, optional: true, nullable: false
        field :ipaddress, -> { String }, optional: true, nullable: false
        field :order_description, -> { String }, optional: true, nullable: false, api_name: "orderDescription"
        field :order_id, -> { String }, optional: true, nullable: false, api_name: "orderId"
        field :refund_details, -> { PayabliSdk::Types::RefundDetail }, optional: true, nullable: false, api_name: "refundDetails"
        field :source, -> { String }, optional: true, nullable: false
      end
    end
  end
end
