# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      module TransactionDetailRecordMethod
        extend Payabli::Internal::Types::Enum

        ACH = "ach"
        CARD = "card"
      end
    end
  end
end
