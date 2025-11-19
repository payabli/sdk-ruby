# frozen_string_literal: true

module Payabli
  module Types
    module NotificationContentReportName
      extend Payabli::Internal::Types::Enum

      TRANSACTION = "Transaction"
      SETTLEMENT = "Settlement"
      BOARDING = "Boarding"
      RETURNED = "Returned"
    end
  end
end
