# frozen_string_literal: true

module PayabliSdk
  module TokenStorage
    module Types
      # Information about the payment method for the transaction.
      class RequestTokenStoragePaymentMethod < Internal::Types::Model
        extend PayabliSdk::Internal::Types::Union

        member -> { PayabliSdk::TokenStorage::Types::TokenizeCard }
        member -> { PayabliSdk::TokenStorage::Types::TokenizeAch }
        member -> { PayabliSdk::TokenStorage::Types::ConvertToken }
      end
    end
  end
end
