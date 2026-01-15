# frozen_string_literal: true

module PayabliSdk
  module MoneyIn
    module Types
      # Object describing payment method to use for transaction.
      class RequestPaymentAuthorizePaymentMethod < Internal::Types::Model
        extend PayabliSdk::Internal::Types::Union

        member -> { PayabliSdk::Types::PayMethodCredit }
        member -> { PayabliSdk::Types::PayMethodStoredMethod }
        member -> { PayabliSdk::Types::PayMethodCloud }
      end
    end
  end
end
