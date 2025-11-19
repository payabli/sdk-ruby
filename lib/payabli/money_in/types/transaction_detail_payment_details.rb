# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      # Detailed breakdown of payment amounts and identifiers
      class TransactionDetailPaymentDetails < Internal::Types::Model
        field :total_amount, -> { Integer }, optional: false, nullable: false, api_name: "totalAmount"
        field :service_fee, -> { Integer }, optional: false, nullable: false, api_name: "serviceFee"
        field :check_number, -> { String }, optional: false, nullable: true, api_name: "checkNumber"
        field :check_image, lambda {
          Internal::Types::Hash[String, Object]
        }, optional: false, nullable: true, api_name: "checkImage"
        field :check_unique_id, -> { String }, optional: false, nullable: false, api_name: "checkUniqueId"
        field :currency, -> { String }, optional: false, nullable: false
        field :order_description, -> { String }, optional: false, nullable: true, api_name: "orderDescription"
        field :order_id, -> { String }, optional: false, nullable: true, api_name: "orderId"
        field :order_id_alternative, -> { String }, optional: false, nullable: true, api_name: "orderIdAlternative"
        field :payment_description, -> { String }, optional: false, nullable: true, api_name: "paymentDescription"
        field :group_number, -> { String }, optional: false, nullable: true, api_name: "groupNumber"
        field :source, -> { String }, optional: false, nullable: true
        field :payabli_trans_id, -> { String }, optional: false, nullable: true, api_name: "payabliTransId"
        field :unbundled, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true
        field :categories, lambda {
          Internal::Types::Array[Internal::Types::Hash[String, Object]]
        }, optional: false, nullable: false
        field :split_funding, lambda {
          Internal::Types::Array[Internal::Types::Hash[String, Object]]
        }, optional: false, nullable: false, api_name: "splitFunding"
      end
    end
  end
end
