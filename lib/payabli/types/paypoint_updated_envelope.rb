# frozen_string_literal: true

module Payabli
  module Types
    # Standard boarding response envelope wrapping an updated paypoint.
    class PaypointUpdatedEnvelope < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: true

      field :trace_id, -> { String }, optional: false, nullable: true, api_name: "traceId"

      field :data, -> { Payabli::Types::PaypointUpdatedResponse }, optional: false, nullable: true
    end
  end
end
