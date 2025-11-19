# frozen_string_literal: true

module Payabli
  module MoneyOutTypes
    module Types
      # Object containing vendor's bank information. This object is deprecated for this endpoint. Use the `paymentMethod` object in payout authorize requests instead.
      class RequestOutAuthorizeVendorBillingData < Internal::Types::Model
        field :bank_name, -> { String }, optional: true, nullable: false, api_name: "bankName"
        field :routing_account, -> { String }, optional: true, nullable: false, api_name: "routingAccount"
        field :account_number, -> { String }, optional: true, nullable: false, api_name: "accountNumber"
        field :type_account, lambda {
          Payabli::Types::TypeAccount
        }, optional: true, nullable: false, api_name: "typeAccount"
        field :bank_account_holder_name, lambda {
          String
        }, optional: true, nullable: false, api_name: "bankAccountHolderName"
      end
    end
  end
end
