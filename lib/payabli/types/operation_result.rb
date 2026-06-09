# frozen_string_literal: true

module Payabli
  module Types
    class OperationResult < Internal::Types::Model
      field :message, -> { String }, optional: true, nullable: false

      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
