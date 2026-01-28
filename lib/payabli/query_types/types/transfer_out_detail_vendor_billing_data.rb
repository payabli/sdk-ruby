# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # Billing data for a vendor.
      class TransferOutDetailVendorBillingData < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: true
        field :account_id, -> { String }, optional: false, nullable: true, api_name: "accountId"
        field :nickname, -> { String }, optional: false, nullable: true
        field :bank_name, -> { String }, optional: false, nullable: true, api_name: "bankName"
        field :routing_account, -> { String }, optional: false, nullable: true, api_name: "routingAccount"
        field :account_number, -> { String }, optional: false, nullable: true, api_name: "accountNumber"
        field :type_account, -> { String }, optional: false, nullable: true, api_name: "typeAccount"
        field :bank_account_holder_name, -> { String }, optional: false, nullable: true, api_name: "bankAccountHolderName"
        field :bank_account_holder_type, -> { String }, optional: false, nullable: true, api_name: "bankAccountHolderType"
        field :bank_account_function, -> { Integer }, optional: false, nullable: true, api_name: "bankAccountFunction"
        field :verified, -> { Internal::Types::Boolean }, optional: false, nullable: true
        field :status, -> { Integer }, optional: false, nullable: true
        field :services, -> { Internal::Types::Array[Object] }, optional: false, nullable: true
        field :default, -> { Internal::Types::Boolean }, optional: false, nullable: true
        field :country, -> { String }, optional: false, nullable: true
      end
    end
  end
end
