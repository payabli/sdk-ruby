# frozen_string_literal: true

module Payabli
  module Types
    # Standard boarding response envelope wrapping an application's document requirements.
    class DocumentRequirementListEnvelope < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: true

      field :trace_id, -> { String }, optional: false, nullable: true, api_name: "traceId"

      field :data, -> { Internal::Types::Array[Payabli::Types::DocumentRequirement] }, optional: false, nullable: false
    end
  end
end
