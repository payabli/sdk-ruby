# frozen_string_literal: true

module PayabliSdk
  module MoneyOutTypes
    module Types
      # Billing data for the vendor.
      class VCardGetResponseAssociatedVendorBillingData < Internal::Types::Model
        field :id, -> { Integer }, optional: true, nullable: false
        field :account_id, -> { String }, optional: true, nullable: false, api_name: "accountId"
        field :nickname, -> { String }, optional: true, nullable: false
        field :bank_name, -> { String }, optional: true, nullable: false, api_name: "bankName"
        field :routing_account, -> { String }, optional: true, nullable: false, api_name: "routingAccount"
        field :account_number, -> { String }, optional: true, nullable: false, api_name: "accountNumber"
        field :type_account, -> { String }, optional: true, nullable: false, api_name: "typeAccount"
        field :bank_account_holder_name, -> { String }, optional: true, nullable: false, api_name: "bankAccountHolderName"
        field :bank_account_holder_type, -> { String }, optional: true, nullable: false, api_name: "bankAccountHolderType"
        field :bank_account_function, -> { Integer }, optional: true, nullable: false, api_name: "bankAccountFunction"
        field :verified, -> { Internal::Types::Boolean }, optional: true, nullable: false
        field :status, -> { Integer }, optional: true, nullable: false
        field :services, -> { Internal::Types::Array[Object] }, optional: true, nullable: false
        field :default, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
