# frozen_string_literal: true

module PayabliSdk
  module Types
    # Information about the payment method for the transaction.
    class PaymentMethod < Internal::Types::Model
      extend PayabliSdk::Internal::Types::Union

      member -> { PayabliSdk::Types::PayMethodCredit }
      member -> { PayabliSdk::Types::PayMethodAch }
      member -> { PayabliSdk::Types::PayMethodStoredMethod }
      member -> { PayabliSdk::Types::PayMethodCloud }
      member -> { PayabliSdk::Types::Check }
      member -> { PayabliSdk::Types::Cash }
      member -> { PayabliSdk::Types::PayMethodBodyAllFields }
    end
  end
end
