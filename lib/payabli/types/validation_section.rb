# frozen_string_literal: true

module Payabli
  module Types
    # The validation result for one section of the application.
    class ValidationSection < Internal::Types::Model
      field :complete, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :missing_fields, -> { Internal::Types::Array[Payabli::Types::ValidationMissingField] }, optional: false, nullable: false, api_name: "missingFields"
    end
  end
end
