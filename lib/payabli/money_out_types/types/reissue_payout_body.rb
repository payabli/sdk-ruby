# frozen_string_literal: true

module Payabli
  module MoneyOutTypes
    module Types
      # Request body for reissuing a payout transaction.
      class ReissuePayoutBody < Internal::Types::Model
        field :payment_method, -> { Payabli::MoneyOutTypes::Types::ReissuePaymentMethod }, optional: false, nullable: false, api_name: "paymentMethod"
      end
    end
  end
end
