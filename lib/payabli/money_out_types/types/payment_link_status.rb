# frozen_string_literal: true

module Payabli
  module MoneyOutTypes
    module Types
      module PaymentLinkStatus
        extend Payabli::Internal::Types::Enum

        ACTIVE = "Active"
        EXPIRED = "Expired"
        CANCELED = "Canceled"
        DELETED = "Deleted"
      end
    end
  end
end
