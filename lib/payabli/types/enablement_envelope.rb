# frozen_string_literal: true

module Payabli
  module Types
    # Standard boarding response envelope wrapping an application's enablement progress.
    class EnablementEnvelope < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: true

      field :trace_id, -> { String }, optional: false, nullable: true, api_name: "traceId"

      field :data, -> { Payabli::Types::EnablementResult }, optional: false, nullable: true
    end
  end
end
