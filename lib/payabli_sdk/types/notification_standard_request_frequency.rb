# frozen_string_literal: true

module PayabliSdk
  module Types
    module NotificationStandardRequestFrequency
      extend PayabliSdk::Internal::Types::Enum

      ONE_TIME = "one-time"
      UNTILCANCELLED = "untilcancelled"
    end
  end
end
