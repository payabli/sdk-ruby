# frozen_string_literal: true

module Payabli
  module Types
    # Payment method details for the payout subscription.
    class PayoutSubscriptionPaymentData < Internal::Types::Model
      field :account_exp, -> { String }, optional: true, nullable: false, api_name: "accountExp"

      field :account_id, -> { String }, optional: true, nullable: false, api_name: "accountId"

      field :account_type, -> { String }, optional: true, nullable: false, api_name: "accountType"

      field :account_zip, -> { String }, optional: true, nullable: false, api_name: "accountZip"

      field :bin_data, -> { Payabli::Types::BinData }, optional: true, nullable: false, api_name: "binData"

      field :holder_name, -> { String }, optional: true, nullable: false, api_name: "holderName"

      field :initiator, -> { String }, optional: true, nullable: false

      field :masked_account, -> { String }, optional: true, nullable: false, api_name: "maskedAccount"

      field :order_description, -> { String }, optional: true, nullable: false, api_name: "orderDescription"

      field :payment_details, -> { Payabli::Types::PayoutSubscriptionPaymentDetails }, optional: true, nullable: false, api_name: "paymentDetails"

      field :payor_signature, -> { Payabli::Types::PayoutSubscriptionPaymentDataPayorSignature }, optional: true, nullable: false, api_name: "payorSignature"

      field :sequence, -> { String }, optional: true, nullable: false

      field :signature_data, -> { String }, optional: true, nullable: false, api_name: "signatureData"

      field :wallet_type, -> { String }, optional: true, nullable: false, api_name: "walletType"

      field :stored_id, -> { String }, optional: true, nullable: false, api_name: "storedId"

      field :stored_method_usage_type, -> { String }, optional: true, nullable: false, api_name: "storedMethodUsageType"
    end
  end
end
