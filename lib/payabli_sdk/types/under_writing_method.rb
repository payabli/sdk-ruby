# frozen_string_literal: true

module PayabliSdk
  module Types
    module UnderWritingMethod
      extend PayabliSdk::Internal::Types::Enum

      AUTOMATIC = "automatic"
      MANUAL = "manual"
      BYPASS = "bypass"
    end
  end
end
