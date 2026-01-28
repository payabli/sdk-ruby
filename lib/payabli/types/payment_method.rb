# frozen_string_literal: true

module Payabli
  module Types
    # Information about the payment method for the transaction.
    class PaymentMethod < Internal::Types::Model
      extend Payabli::Internal::Types::Union

      member -> { Payabli::Types::PayMethodCredit }
      member -> { Payabli::Types::PayMethodAch }
      member -> { Payabli::Types::PayMethodStoredMethod }
      member -> { Payabli::Types::PayMethodCloud }
      member -> { Payabli::Types::Check }
      member -> { Payabli::Types::Cash }
      member -> { Payabli::Types::PayMethodBodyAllFields }
    end
  end
end
