# frozen_string_literal: true

module Payabli
  module Types
    module Frequencynotification
      extend Payabli::Internal::Types::Enum

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
