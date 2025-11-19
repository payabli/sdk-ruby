# frozen_string_literal: true

module Payabli
  module Wallet
    module Types
      class ConfigurePaypointRequestApplePay < Internal::Types::Model
        field :entry, -> { String }, optional: true, nullable: false
        field :is_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isEnabled"
      end
    end
  end
end
