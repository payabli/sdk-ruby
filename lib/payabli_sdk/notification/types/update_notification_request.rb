# frozen_string_literal: true

module PayabliSdk
  module Notification
    module Types
      class UpdateNotificationRequest < Internal::Types::Model
        extend PayabliSdk::Internal::Types::Union

        member -> { PayabliSdk::Types::NotificationStandardRequest }
        member -> { PayabliSdk::Types::NotificationReportRequest }
      end
    end
  end
end
