# frozen_string_literal: true

module PayabliSdk
  module Types
    class PayoutGatewayConnector < Internal::Types::Model
      field :configuration, -> { String }, optional: true, nullable: false
      field :name, -> { String }, optional: true, nullable: false, api_name: "Name"
      field :mode, -> { Integer }, optional: true, nullable: false, api_name: "Mode"
      field :bank, -> { String }, optional: true, nullable: false, api_name: "Bank"
      field :descriptor, -> { String }, optional: true, nullable: false, api_name: "Descriptor"
      field :gateway_id, -> { Integer }, optional: true, nullable: false, api_name: "gatewayID"
      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "Enabled"
      field :enable_ach_validation, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "EnableACHValidation"
      field :test_mode, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "TestMode"
    end
  end
end
