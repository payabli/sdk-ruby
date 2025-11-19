# frozen_string_literal: true

module Payabli
  module Subscription
    module Types
      # Information about the payment method for the transaction. Required and recommended fields for each payment method type are described in each schema below.
      class RequestSchedulePaymentMethod < Internal::Types::Model
        extend Payabli::Internal::Types::Union

        member -> { Payabli::Types::PayMethodCredit }
        member -> { Payabli::Types::PayMethodAch }
        member -> { Payabli::Subscription::Types::RequestSchedulePaymentMethodInitiator }
      end
    end
  end
end
