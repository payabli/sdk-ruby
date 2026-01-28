# frozen_string_literal: true

module Payabli
  module Types
    class QueryPayoutTransactionRecordsItemPaymentData < Internal::Types::Model
      field :account_exp, -> { String }, optional: true, nullable: false, api_name: "AccountExp"
      field :account_id, -> { String }, optional: true, nullable: false, api_name: "accountId"
      field :account_type, -> { String }, optional: true, nullable: false, api_name: "AccountType"
      field :account_zip, -> { String }, optional: true, nullable: false, api_name: "AccountZip"
      field :bank_account, -> { String }, optional: true, nullable: false, api_name: "bankAccount"
      field :bin_data, -> { Payabli::Types::BinData }, optional: true, nullable: false, api_name: "binData"
      field :cloud_signature_data, -> { String }, optional: true, nullable: false, api_name: "cloudSignatureData"
      field :cloud_signature_format, -> { String }, optional: true, nullable: false, api_name: "cloudSignatureFormat"
      field :gateway_connector, -> { Payabli::Types::PayoutGatewayConnector }, optional: true, nullable: false, api_name: "gatewayConnector"
      field :holder_name, -> { String }, optional: true, nullable: false, api_name: "HolderName"
      field :initiator, -> { String }, optional: true, nullable: false, api_name: "Initiator"
      field :masked_account, -> { String }, optional: true, nullable: false, api_name: "MaskedAccount"
      field :order_description, -> { String }, optional: true, nullable: false, api_name: "orderDescription"
      field :payment_details, -> { Payabli::Types::PaymentDetail }, optional: true, nullable: false, api_name: "paymentDetails"
      field :payor_data, -> { String }, optional: true, nullable: false, api_name: "payorData"
      field :sequence, -> { String }, optional: true, nullable: false, api_name: "Sequence"
      field :stored_id, -> { String }, optional: true, nullable: false, api_name: "StoredId"
      field :stored_method_usage_type, -> { String }, optional: true, nullable: false, api_name: "StoredMethodUsageType"
    end
  end
end
