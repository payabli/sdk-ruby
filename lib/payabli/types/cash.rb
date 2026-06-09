# frozen_string_literal: true

module Payabli
  module Types
    class Cash < Internal::Types::Model
      field :method_, -> { Payabli::Types::CashMethod }, optional: false, nullable: false, api_name: "method"
    end
  end
end
