# frozen_string_literal: true

module PayabliSdk
  module MoneyIn
    module Types
      # Object describing the ACH payment method to use for transaction.
      class RequestCreditPaymentMethod < Internal::Types::Model
        field :ach_account, -> { String }, optional: true, nullable: false, api_name: "achAccount"
        field :ach_account_type, -> { PayabliSdk::Types::Achaccounttype }, optional: true, nullable: false, api_name: "achAccountType"
        field :ach_code, -> { String }, optional: true, nullable: false, api_name: "achCode"
        field :ach_holder, -> { String }, optional: true, nullable: false, api_name: "achHolder"
        field :ach_routing, -> { String }, optional: true, nullable: false, api_name: "achRouting"
        field :method_, -> { String }, optional: false, nullable: false, api_name: "method"
      end
    end
  end
end
