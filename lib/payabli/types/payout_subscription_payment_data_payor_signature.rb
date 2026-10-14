# frozen_string_literal: true

module Payabli
  module Types
    # Signature captured on a card-present device. Always `null` for payout subscriptions.
    class PayoutSubscriptionPaymentDataPayorSignature < Internal::Types::Model
      field :status, -> { String }, optional: true, nullable: false

      field :format, -> { String }, optional: true, nullable: false

      field :content, -> { String }, optional: true, nullable: false
    end
  end
end
