# frozen_string_literal: true

module Payabli
  module Types
    # Whether the application's stored records meet the requirements for the services it requests.
    class ValidationResult < Internal::Types::Model
      field :valid, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :services_evaluated, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "servicesEvaluated"

      field :sections, -> { Payabli::Types::ValidationSections }, optional: false, nullable: false
    end
  end
end
