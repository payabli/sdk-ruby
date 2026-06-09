# frozen_string_literal: true

module Payabli
  module Types
    class UpdateNotificationRequest < Internal::Types::Model
      extend Payabli::Internal::Types::Union

      member -> { Payabli::Types::NotificationStandardRequest }

      member -> { Payabli::Types::NotificationReportRequest }
    end
  end
end
