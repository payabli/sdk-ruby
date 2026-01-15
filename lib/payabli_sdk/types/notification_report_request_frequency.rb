# frozen_string_literal: true

module PayabliSdk
  module Types
    module NotificationReportRequestFrequency
      extend PayabliSdk::Internal::Types::Enum

      ONE_TIME = "one-time"
      DAILY = "daily"
      WEEKLY = "weekly"
      BIWEEKLY = "biweekly"
      MONTHLY = "monthly"
      QUARTERLY = "quarterly"
      SEMIANNUALLY = "semiannually"
      ANNUALLY = "annually"
    end
  end
end
