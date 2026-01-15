# frozen_string_literal: true

module PayabliSdk
  module Types
    module NotificationStandardRequestMethod
      extend PayabliSdk::Internal::Types::Enum

      EMAIL = "email"
      SMS = "sms"
      WEB = "web"
    end
  end
end
