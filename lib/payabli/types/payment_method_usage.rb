# frozen_string_literal: true

module Payabli
  module Types
    module PaymentMethodUsage
      extend Payabli::Internal::Types::Enum

      DEPOSITS = "deposits"
      BILLING = "billing"
      WITHDRAWALS = "withdrawals"
      PAY_OUT_FUNDING = "payOutFunding"
      REFUNDS = "refunds"
      RETURNS = "returns"
    end
  end
end
