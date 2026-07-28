# frozen_string_literal: true

module Payabli
  module Types
    # The transition actions currently available on a case. Empty when no user action is available.
    class AvailableTransitionsResponse < Internal::Types::Model
      field :transitions, -> { Internal::Types::Array[Payabli::Types::CaseTrigger] }, optional: false, nullable: false
    end
  end
end
