# frozen_string_literal: true

module Payabli
  module TokenStorage
    module Types
      # Information about the payment method for the transaction.
      class RequestTokenStoragePaymentMethod < Internal::Types::Model
        extend Payabli::Internal::Types::Union

        member -> { Payabli::TokenStorage::Types::TokenizeCard }
        member -> { Payabli::TokenStorage::Types::TokenizeAch }
        member -> { Payabli::TokenStorage::Types::ConvertToken }
      end
    end
  end
end
