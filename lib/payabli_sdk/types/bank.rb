# frozen_string_literal: true

module PayabliSdk
  module Types
    # Object that contains bank account details.
    class Bank < Internal::Types::Model
      field :id, -> { Integer }, optional: true, nullable: false
      field :account_id, -> { String }, optional: true, nullable: false, api_name: "accountId"
      field :nickname, -> { String }, optional: true, nullable: false
      field :bank_name, -> { String }, optional: true, nullable: false, api_name: "bankName"
      field :routing_account, -> { String }, optional: true, nullable: false, api_name: "routingAccount"
      field :account_number, -> { String }, optional: true, nullable: false, api_name: "accountNumber"
      field :type_account, -> { PayabliSdk::Types::TypeAccount }, optional: true, nullable: false, api_name: "typeAccount"
      field :bank_account_holder_name, -> { String }, optional: true, nullable: false, api_name: "bankAccountHolderName"
      field :bank_account_holder_type, -> { PayabliSdk::Types::BankAccountHolderType }, optional: true, nullable: false, api_name: "bankAccountHolderType"
      field :bank_account_function, -> { Integer }, optional: true, nullable: false, api_name: "bankAccountFunction"
      field :verified, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :status, -> { Integer }, optional: true, nullable: false
      field :services, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
