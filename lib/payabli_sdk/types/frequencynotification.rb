# frozen_string_literal: true

module PayabliSdk
  module Types
    module Frequencynotification
      extend PayabliSdk::Internal::Types::Enum

      ONE_TIME = "one-time"
      DAILY = "daily"
      WEEKLY = "weekly"
      BIWEEKLY = "biweekly"
      MONTHLY = "monthly"
      QUARTERLY = "quarterly"
      SEMIANNUALLY = "semiannually"
      ANNUALLY = "annually"
      UNTILCANCELLED = "untilcancelled"
    end
  end
end
