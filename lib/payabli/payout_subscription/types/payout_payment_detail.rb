# frozen_string_literal: true

module Payabli
  module PayoutSubscription
    module Types
      # Payment details for payout subscriptions.
      class PayoutPaymentDetail < Internal::Types::Model
        field :total_amount, -> { Integer }, optional: false, nullable: false, api_name: "totalAmount"
        field :service_fee, -> { Integer }, optional: true, nullable: false, api_name: "serviceFee"
        field :currency, -> { String }, optional: true, nullable: false
        field :check_number, -> { String }, optional: true, nullable: false, api_name: "checkNumber"
        field :order_description, -> { String }, optional: true, nullable: false, api_name: "orderDescription"
        field :order_id, -> { String }, optional: true, nullable: false, api_name: "orderId"
        field :order_id_alternative, -> { String }, optional: true, nullable: false, api_name: "orderIdAlternative"
        field :payment_description, -> { String }, optional: true, nullable: false, api_name: "paymentDescription"
        field :settlement_descriptor, -> { String }, optional: true, nullable: false, api_name: "settlementDescriptor"
        field :group_number, -> { String }, optional: true, nullable: false, api_name: "groupNumber"
        field :source, -> { String }, optional: true, nullable: false
        field :payabli_trans_id, -> { String }, optional: true, nullable: false, api_name: "payabliTransId"
        field :unbundled, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
