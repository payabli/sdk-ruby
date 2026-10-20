# frozen_string_literal: true

module Payabli
  module Types
    module UnderwritingMode
      extend Payabli::Internal::Types::Enum

      AUTOMATIC = "automatic"
      MANUAL = "manual"
      BYPASS = "bypass"
    end
  end
end
