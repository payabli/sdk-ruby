# frozen_string_literal: true

module Payabli
  module Types
    module NotificationReportRequestContentReportName
      extend Payabli::Internal::Types::Enum

      TRANSACTION = "Transaction"
      SETTLEMENT = "Settlement"
      BOARDING = "Boarding"
      RETURNED = "Returned"
    end
  end
end
