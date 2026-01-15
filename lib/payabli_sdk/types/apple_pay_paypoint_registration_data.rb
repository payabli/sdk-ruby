# frozen_string_literal: true

module PayabliSdk
  module Types
    class ApplePayPaypointRegistrationData < Internal::Types::Model
      field :entry, -> { String }, optional: true, nullable: false
      field :is_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isEnabled"
      field :wallet_type, -> { String }, optional: true, nullable: false, api_name: "walletType"
      field :wallet_data, -> { PayabliSdk::Types::AppleWalletData }, optional: true, nullable: false, api_name: "walletData"
    end
  end
end
