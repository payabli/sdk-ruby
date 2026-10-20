# frozen_string_literal: true

module Payabli
  module Types
    # A single payment method to create.
    class CreatePaymentMethodRequest < Internal::Types::Model
      field :type, -> { Payabli::Types::CreatePaymentMethodRequestType }, optional: false, nullable: false

      field :account_owner, -> { String }, optional: false, nullable: false, api_name: "accountOwner"

      field :owner_type, -> { Payabli::Types::PaymentMethodOwnerType }, optional: false, nullable: false, api_name: "ownerType"

      field :nickname, -> { String }, optional: true, nullable: false

      field :financial_institution, -> { String }, optional: true, nullable: false, api_name: "financialInstitution"

      field :account_type, -> { String }, optional: false, nullable: false, api_name: "accountType"

      field :account_number, -> { String }, optional: false, nullable: false, api_name: "accountNumber"

      field :routing_number, -> { String }, optional: false, nullable: false, api_name: "routingNumber"

      field :usage, -> { Internal::Types::Array[Payabli::Types::PaymentMethodUsage] }, optional: false, nullable: false

      field :is_default, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isDefault"
    end
  end
end
