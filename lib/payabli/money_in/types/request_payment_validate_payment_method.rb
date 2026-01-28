# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      # Object describing payment method to use for validation.
      class RequestPaymentValidatePaymentMethod < Internal::Types::Model
        field :method_, -> { Payabli::MoneyIn::Types::RequestPaymentValidatePaymentMethodMethod }, optional: false, nullable: false, api_name: "method"
        field :cardnumber, -> { String }, optional: false, nullable: false
        field :cardexp, -> { String }, optional: false, nullable: false
        field :cardzip, -> { String }, optional: false, nullable: false
        field :card_holder, -> { String }, optional: false, nullable: false, api_name: "cardHolder"
      end
    end
  end
end
