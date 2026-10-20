# frozen_string_literal: true

module Payabli
  module Types
    # A payment method as returned by create, update, and deactivate. Sensitive fields are masked.
    class PaymentMethodResult < Internal::Types::Model
      field :payment_method_reference, -> { String }, optional: false, nullable: false, api_name: "paymentMethodReference"

      field :type, -> { String }, optional: false, nullable: false

      field :fingerprint, -> { String }, optional: true, nullable: false

      field :token_reference, -> { String }, optional: true, nullable: false, api_name: "tokenReference"

      field :account_owner, -> { String }, optional: false, nullable: false, api_name: "accountOwner"

      field :owner_type, -> { Payabli::Types::PaymentMethodOwnerType }, optional: false, nullable: false, api_name: "ownerType"

      field :nickname, -> { String }, optional: true, nullable: false

      field :financial_institution, -> { String }, optional: true, nullable: false, api_name: "financialInstitution"

      field :account_type, -> { String }, optional: true, nullable: false, api_name: "accountType"

      field :account_number, -> { String }, optional: true, nullable: false, api_name: "accountNumber"

      field :routing_number, -> { String }, optional: true, nullable: false, api_name: "routingNumber"

      field :status, -> { String }, optional: false, nullable: false

      field :usage, -> { Internal::Types::Array[Payabli::Types::PaymentMethodUsage] }, optional: true, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :last_updated, -> { String }, optional: false, nullable: false, api_name: "lastUpdated"

      field :links, -> { Payabli::Types::PaymentMethodLinks }, optional: false, nullable: false, api_name: "_links"
    end
  end
end
