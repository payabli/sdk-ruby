# frozen_string_literal: true

module Payabli
  module Types
    # The Pay In and Pay Out services the bank account applies to. Include at least one entry across the two lists.
    class BankAccountServices < Internal::Types::Model
      field :money_in, -> { Internal::Types::Array[Payabli::Types::MoneyInService] }, optional: true, nullable: false, api_name: "moneyIn"

      field :money_out, -> { Internal::Types::Array[Payabli::Types::MoneyOutService] }, optional: true, nullable: false, api_name: "moneyOut"
    end
  end
end
