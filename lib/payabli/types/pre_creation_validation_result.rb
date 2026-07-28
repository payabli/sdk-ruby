# frozen_string_literal: true

module Payabli
  module Types
    # The result of validating a bank account change before creating a case.
    class PreCreationValidationResult < Internal::Types::Model
      field :is_valid, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isValid"

      field :blocking_conditions, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "blockingConditions"

      field :warnings, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :validation_errors, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "validationErrors"
    end
  end
end
