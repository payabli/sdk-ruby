# frozen_string_literal: true

module Payabli
  module Types
    module NotificationStandardRequestFrequency
      extend Payabli::Internal::Types::Enum

      ONE_TIME = "one-time"
      UNTILCANCELLED = "untilcancelled"
    end
  end
end
