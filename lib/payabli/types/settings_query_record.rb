# frozen_string_literal: true

module Payabli
  module Types
    class SettingsQueryRecord < Internal::Types::Model
      field :custom_fields, lambda {
        Internal::Types::Array[Payabli::Types::KeyValue]
      }, optional: true, nullable: false, api_name: "customFields"
      field :for_invoices, lambda {
        Internal::Types::Array[Payabli::Types::KeyValue]
      }, optional: true, nullable: false, api_name: "forInvoices"
      field :for_pay_outs, lambda {
        Internal::Types::Array[Payabli::Types::KeyValue]
      }, optional: true, nullable: false, api_name: "forPayOuts"
      field :for_wallets, lambda {
        Internal::Types::Array[Payabli::Types::KeyValue]
      }, optional: true, nullable: false, api_name: "forWallets"
      field :general, -> { Internal::Types::Array[Payabli::Types::KeyValue] }, optional: true, nullable: false
      field :identifiers, -> { Internal::Types::Array[Payabli::Types::KeyValue] }, optional: true, nullable: false
    end
  end
end
