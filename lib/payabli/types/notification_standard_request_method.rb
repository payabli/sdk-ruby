# frozen_string_literal: true

module Payabli
  module Types
    module NotificationStandardRequestMethod
      extend Payabli::Internal::Types::Enum

      EMAIL = "email"
      SMS = "sms"
      WEB = "web"
    end
  end
end
