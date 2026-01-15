# frozen_string_literal: true

module PayabliSdk
  module MoneyIn
    module Types
      module TransactionDetailRecordMethod
        extend PayabliSdk::Internal::Types::Enum

        ACH = "ach"
        CARD = "card"
      end
    end
  end
end
