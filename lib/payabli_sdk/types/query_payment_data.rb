# frozen_string_literal: true

module PayabliSdk
  module Types
    class QueryPaymentData < Internal::Types::Model
      field :account_exp, -> { String }, optional: true, nullable: false, api_name: "AccountExp"
      field :account_id, -> { String }, optional: true, nullable: false, api_name: "accountId"
      field :account_type, -> { String }, optional: true, nullable: false, api_name: "AccountType"
      field :account_zip, -> { String }, optional: true, nullable: false, api_name: "AccountZip"
      field :bin_data, -> { PayabliSdk::Types::BinData }, optional: true, nullable: false, api_name: "binData"
      field :holder_name, -> { String }, optional: true, nullable: false, api_name: "HolderName"
      field :initiator, -> { String }, optional: true, nullable: false, api_name: "Initiator"
      field :masked_account, -> { String }, optional: true, nullable: false, api_name: "MaskedAccount"
      field :order_description, -> { String }, optional: true, nullable: false, api_name: "orderDescription"
      field :payment_details, -> { PayabliSdk::Types::PaymentDetail }, optional: true, nullable: false, api_name: "paymentDetails"
      field :sequence, -> { String }, optional: true, nullable: false, api_name: "Sequence"
      field :signature_data, -> { String }, optional: true, nullable: false, api_name: "SignatureData"
      field :stored_id, -> { String }, optional: true, nullable: false, api_name: "StoredId"
      field :stored_method_usage_type, -> { String }, optional: true, nullable: false, api_name: "StoredMethodUsageType"
    end
  end
end
