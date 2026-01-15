# frozen_string_literal: true

module PayabliSdk
  module Types
    module Frequency
      extend PayabliSdk::Internal::Types::Enum

      ONE_TIME = "onetime"
      WEEKLY = "weekly"
      EVERY_2_WEEKS = "every2weeks"
      EVERY_6_MONTHS = "every6months"
      MONTHLY = "monthly"
      EVERY_3_MONTHS = "every3months"
      ANNUALLY = "annually"
    end
  end
end
