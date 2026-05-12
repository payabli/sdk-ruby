# frozen_string_literal: true

module Payabli
  module Types
    class BillingData < Internal::Types::Model
      field :account_number, -> { String }, optional: true, nullable: false, api_name: "accountNumber"
      field :bank_account_function, -> { Integer }, optional: true, nullable: false, api_name: "bankAccountFunction"
      field :bank_account_holder_name, -> { String }, optional: true, nullable: false, api_name: "bankAccountHolderName"
      field :bank_account_holder_type, -> { Payabli::Types::BankAccountHolderType }, optional: true, nullable: false, api_name: "bankAccountHolderType"
      field :bank_name, -> { String }, optional: true, nullable: false, api_name: "bankName"
      field :id, -> { Integer }, optional: true, nullable: false
      field :routing_account, -> { String }, optional: true, nullable: false, api_name: "routingAccount"
      field :type_account, -> { Payabli::Types::TypeAccount }, optional: true, nullable: false, api_name: "typeAccount"
    end
  end
end
