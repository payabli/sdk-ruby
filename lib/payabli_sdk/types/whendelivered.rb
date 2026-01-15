# frozen_string_literal: true

module PayabliSdk
  module Types
    module Whendelivered
      extend PayabliSdk::Internal::Types::Enum

      ZERO_7_DAYS = "0-7 Days"
      EIGHT_14_DAYS = "8-14 Days"
      FIFTEEN_30_DAYS = "15-30 Days"
      OVER_30_DAYS = "Over 30 Days"
    end
  end
end
