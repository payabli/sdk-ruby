# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      # Object describing payment method to use for transaction.
      class RequestPaymentAuthorizePaymentMethod < Internal::Types::Model
        extend Payabli::Internal::Types::Union

        member -> { Payabli::Types::PayMethodCredit }
        member -> { Payabli::Types::PayMethodStoredMethod }
        member -> { Payabli::Types::PayMethodCloud }
      end
    end
  end
end
