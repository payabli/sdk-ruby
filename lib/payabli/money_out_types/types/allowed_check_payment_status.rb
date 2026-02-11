# frozen_string_literal: true

module Payabli
  module MoneyOutTypes
    module Types
      module AllowedCheckPaymentStatus
        extend Payabli::Internal::Types::Enum

        CANCELLED = "0"
        PAID = "5"
      end
    end
  end
end
