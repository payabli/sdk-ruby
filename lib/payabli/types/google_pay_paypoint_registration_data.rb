# frozen_string_literal: true

module Payabli
  module Types
    class GooglePayPaypointRegistrationData < Internal::Types::Model
      field :entry, -> { String }, optional: true, nullable: false
      field :is_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isEnabled"
      field :wallet_type, -> { String }, optional: true, nullable: false, api_name: "walletType"
      field :wallet_data, -> { Payabli::Types::GoogleWalletData }, optional: true, nullable: false, api_name: "walletData"
    end
  end
end
