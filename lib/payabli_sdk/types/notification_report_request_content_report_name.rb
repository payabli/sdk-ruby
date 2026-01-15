# frozen_string_literal: true

module PayabliSdk
  module Types
    module NotificationReportRequestContentReportName
      extend PayabliSdk::Internal::Types::Enum

      TRANSACTION = "Transaction"
      SETTLEMENT = "Settlement"
      BOARDING = "Boarding"
      RETURNED = "Returned"
    end
  end
end
