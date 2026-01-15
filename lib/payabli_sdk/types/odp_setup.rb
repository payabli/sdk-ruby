# frozen_string_literal: true

module PayabliSdk
  module Types
    class OdpSetup < Internal::Types::Model
      field :allow_ach, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "allowAch"
      field :allow_checks, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "allowChecks"
      field :allow_v_card, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "allowVCard"
      field :processing_region, -> { PayabliSdk::Types::OdpSetupProcessingRegion }, optional: true, nullable: false
      field :processor, -> { String }, optional: true, nullable: false
      field :issuer_network_settings_id, -> { String }, optional: true, nullable: false, api_name: "issuerNetworkSettingsId"
    end
  end
end
