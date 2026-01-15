# frozen_string_literal: true

module PayabliSdk
  module Types
    class BillingDataResponse < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false
      field :account_id, -> { Object }, optional: true, nullable: false, api_name: "accountId"
      field :nickname, -> { String }, optional: false, nullable: false
      field :bank_name, -> { String }, optional: false, nullable: false, api_name: "bankName"
      field :routing_account, -> { String }, optional: false, nullable: false, api_name: "routingAccount"
      field :account_number, -> { String }, optional: false, nullable: false, api_name: "accountNumber"
      field :type_account, -> { PayabliSdk::Types::TypeAccount }, optional: false, nullable: false, api_name: "typeAccount"
      field :bank_account_holder_name, -> { String }, optional: false, nullable: false, api_name: "bankAccountHolderName"
      field :bank_account_holder_type, -> { PayabliSdk::Types::BankAccountHolderType }, optional: false, nullable: false, api_name: "bankAccountHolderType"
      field :bank_account_function, -> { Integer }, optional: false, nullable: false, api_name: "bankAccountFunction"
      field :verified, -> { Internal::Types::Boolean }, optional: false, nullable: false
      field :status, -> { Integer }, optional: false, nullable: false
      field :services, -> { Internal::Types::Array[Object] }, optional: false, nullable: false
      field :default, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
