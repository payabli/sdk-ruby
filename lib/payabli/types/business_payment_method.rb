# frozen_string_literal: true

module Payabli
  module Types
    # A bank account or card attached to a business.
    class BusinessPaymentMethod < Internal::Types::Model
      field :type, -> { String }, optional: true, nullable: false

      field :account_owner, -> { String }, optional: true, nullable: false, api_name: "accountOwner"

      field :name, -> { String }, optional: true, nullable: false

      field :financial_institution, -> { String }, optional: true, nullable: false, api_name: "financialInstitution"

      field :owner_type, -> { String }, optional: true, nullable: false, api_name: "ownerType"

      field :account_type, -> { String }, optional: true, nullable: false, api_name: "accountType"

      field :account_number, -> { String }, optional: true, nullable: false, api_name: "accountNumber"

      field :routing_number, -> { String }, optional: true, nullable: false, api_name: "routingNumber"

      field :card_number, -> { String }, optional: true, nullable: false, api_name: "cardNumber"

      field :expiration_date, -> { String }, optional: true, nullable: false, api_name: "expirationDate"

      field :cvv, -> { String }, optional: true, nullable: false

      field :card_type, -> { String }, optional: true, nullable: false, api_name: "cardType"

      field :usage, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :is_default, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isDefault"
    end
  end
end
