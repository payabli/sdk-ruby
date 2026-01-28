# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # Payment data for an outbound transfer detail.
      class TransferOutDetailPaymentData < Internal::Types::Model
        field :masked_account, -> { String }, optional: false, nullable: true, api_name: "MaskedAccount"
        field :account_type, -> { String }, optional: false, nullable: true, api_name: "AccountType"
        field :account_exp, -> { String }, optional: false, nullable: true, api_name: "AccountExp"
        field :account_zip, -> { String }, optional: false, nullable: true, api_name: "AccountZip"
        field :holder_name, -> { String }, optional: false, nullable: true, api_name: "HolderName"
        field :stored_id, -> { String }, optional: false, nullable: true, api_name: "StoredId"
        field :initiator, -> { String }, optional: false, nullable: true, api_name: "Initiator"
        field :stored_method_usage_type, -> { String }, optional: false, nullable: true, api_name: "StoredMethodUsageType"
        field :sequence, -> { String }, optional: false, nullable: true, api_name: "Sequence"
        field :order_description, -> { String }, optional: false, nullable: true, api_name: "orderDescription"
        field :cloud_signature_data, -> { String }, optional: false, nullable: true, api_name: "cloudSignatureData"
        field :cloud_signature_format, -> { String }, optional: false, nullable: true, api_name: "cloudSignatureFormat"
        field :payment_details, -> { Object }, optional: false, nullable: true, api_name: "paymentDetails"
        field :payor_data, -> { String }, optional: false, nullable: true, api_name: "payorData"
        field :account_id, -> { String }, optional: false, nullable: true, api_name: "accountId"
        field :bank_account, -> { String }, optional: false, nullable: true, api_name: "bankAccount"
        field :gateway_connector, -> { String }, optional: false, nullable: true, api_name: "gatewayConnector"
        field :bin_data, -> { Object }, optional: false, nullable: true, api_name: "binData"
      end
    end
  end
end
