# frozen_string_literal: true

module Payabli
  module Types
    module Frequency
      extend Payabli::Internal::Types::Enum

      ONE_TIME = "one-time"
      WEEKLY = "weekly"
      EVERY_2_WEEKS = "every2weeks"
      EVERY_6_MONTHS = "every6months"
      MONTHLY = "monthly"
      EVERY_3_MONTHS = "every3months"
      ANNUALLY = "annually"
    end
  end
end
