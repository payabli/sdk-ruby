# frozen_string_literal: true

module PayabliSdk
  module Types
    module Whenprovided
      extend PayabliSdk::Internal::Types::Enum

      THIRTY_DAYS_OR_LESS = "30 Days or Less"
      THIRTY_ONE_TO_60_DAYS = "31 to 60 Days"
      SIXTY_DAYS = "60+ Days"
    end
  end
end
