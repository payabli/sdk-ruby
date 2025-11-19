# frozen_string_literal: true

module Payabli
  module Notification
    module Types
      class AddNotificationRequest < Internal::Types::Model
        extend Payabli::Internal::Types::Union

        member -> { Payabli::Types::NotificationStandardRequest }
        member -> { Payabli::Types::NotificationReportRequest }
      end
    end
  end
end
