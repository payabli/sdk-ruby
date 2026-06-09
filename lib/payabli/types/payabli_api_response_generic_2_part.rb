# frozen_string_literal: true

module Payabli
  module Types
    # Minimal response wrapper used by approval-style endpoints that don't carry
    # the standard response envelope.
    class PayabliApiResponseGeneric2Part < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"

      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
    end
  end
end
