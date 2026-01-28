# frozen_string_literal: true

module Payabli
  module Types
    module TypeAccount
      extend Payabli::Internal::Types::Enum

      CHECKING = "Checking"
      SAVINGS = "Savings"
    end
  end
end
