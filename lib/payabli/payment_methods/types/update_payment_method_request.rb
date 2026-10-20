# frozen_string_literal: true

module Payabli
  module PaymentMethods
    module Types
      class UpdatePaymentMethodRequest < Internal::Types::Model
        field :payment_method_reference, -> { String }, optional: false, nullable: false, api_name: "paymentMethodReference"

        field :nickname, -> { String }, optional: true, nullable: false

        field :financial_institution, -> { String }, optional: true, nullable: false, api_name: "financialInstitution"

        field :account_type, -> { String }, optional: true, nullable: false, api_name: "accountType"

        field :account_number, -> { String }, optional: true, nullable: false, api_name: "accountNumber"

        field :routing_number, -> { String }, optional: true, nullable: false, api_name: "routingNumber"

        field :usage, -> { Internal::Types::Array[Payabli::Types::PaymentMethodUsage] }, optional: true, nullable: false
      end
    end
  end
end
