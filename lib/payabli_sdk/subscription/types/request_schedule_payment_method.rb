# frozen_string_literal: true

module PayabliSdk
  module Subscription
    module Types
      # Information about the payment method for the transaction. Required and recommended fields for each payment
      # method type are described in each schema below.
      class RequestSchedulePaymentMethod < Internal::Types::Model
        extend PayabliSdk::Internal::Types::Union

        member -> { PayabliSdk::Types::PayMethodCredit }
        member -> { PayabliSdk::Types::PayMethodAch }
        member -> { PayabliSdk::Subscription::Types::RequestSchedulePaymentMethodInitiator }
      end
    end
  end
end
