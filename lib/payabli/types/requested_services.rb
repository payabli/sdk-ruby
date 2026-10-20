# frozen_string_literal: true

module Payabli
  module Types
    # The services the application requests, grouped by direction. Values are
    # case-insensitive on input and returned in the casing shown.
    class RequestedServices < Internal::Types::Model
      field :money_in, -> { Internal::Types::Array[Payabli::Types::MoneyInService] }, optional: true, nullable: false, api_name: "moneyIn"

      field :money_out, -> { Internal::Types::Array[Payabli::Types::MoneyOutService] }, optional: true, nullable: false, api_name: "moneyOut"
    end
  end
end
