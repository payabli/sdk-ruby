# frozen_string_literal: true

module Payabli
  module Types
    # Information about the payment method for the transaction.
    class RequestTokenStoragePaymentMethod < Internal::Types::Model
      extend Payabli::Internal::Types::Union

      member -> { Payabli::Types::TokenizeCard }

      member -> { Payabli::Types::TokenizeAch }

      member -> { Payabli::Types::ConvertToken }
    end
  end
end
