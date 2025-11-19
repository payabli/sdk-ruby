# frozen_string_literal: true

module Payabli
  module Types
    # Details about the status of the Apple Pay service.
    class ApplePayData < Internal::Types::Model
      field :data, -> { Payabli::Types::ApplePayStatusData }, optional: true, nullable: false
      field :is_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isEnabled"
    end
  end
end
