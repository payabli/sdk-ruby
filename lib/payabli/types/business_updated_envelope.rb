# frozen_string_literal: true

module Payabli
  module Types
    # Standard boarding response envelope wrapping an updated business.
    class BusinessUpdatedEnvelope < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: true

      field :trace_id, -> { String }, optional: false, nullable: true, api_name: "traceId"

      field :data, -> { Payabli::Types::BusinessUpdatedResponse }, optional: false, nullable: true

      field :warnings, -> { Internal::Types::Array[Payabli::Types::BoardingWarning] }, optional: false, nullable: true
    end
  end
end
