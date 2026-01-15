# frozen_string_literal: true

module PayabliSdk
  module Types
    module Whenrefunded
      extend PayabliSdk::Internal::Types::Enum

      EXCHANGE_ONLY = "Exchange Only"
      NO_REFUND_OR_EXCHANGE = "No Refund or Exchange"
      MORE_THAN_30_DAYS = "More than 30 days"
      THIRTY_DAYS_OR_LESS = "30 Days or Less"
    end
  end
end
