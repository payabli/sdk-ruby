# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      # Payment method and transaction details
      class TransactionDetailPaymentData < Internal::Types::Model
        field :masked_account, -> { String }, optional: false, nullable: false, api_name: "maskedAccount"
        field :account_type, -> { String }, optional: false, nullable: false, api_name: "accountType"
        field :account_exp, -> { String }, optional: false, nullable: true, api_name: "accountExp"
        field :holder_name, -> { String }, optional: false, nullable: false, api_name: "holderName"
        field :stored_id, -> { String }, optional: false, nullable: true, api_name: "storedId"
        field :initiator, -> { String }, optional: false, nullable: true
        field :stored_method_usage_type, lambda {
          String
        }, optional: false, nullable: true, api_name: "storedMethodUsageType"
        field :sequence, -> { String }, optional: false, nullable: true
        field :order_description, -> { String }, optional: false, nullable: false, api_name: "orderDescription"
        field :account_id, -> { String }, optional: false, nullable: true, api_name: "accountId"
        field :signature_data, -> { String }, optional: false, nullable: true, api_name: "signatureData"
        field :bin_data, -> { Payabli::Types::BinData }, optional: false, nullable: true, api_name: "binData"
        field :payment_details, lambda {
          Payabli::MoneyIn::Types::TransactionDetailPaymentDetails
        }, optional: false, nullable: false, api_name: "paymentDetails"
      end
    end
  end
end
