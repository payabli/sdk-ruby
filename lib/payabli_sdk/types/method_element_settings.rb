# frozen_string_literal: true

module PayabliSdk
  module Types
    # Settings for wallet payment methods.
    class MethodElementSettings < Internal::Types::Model
      field :apple_pay, -> { PayabliSdk::Types::MethodElementSettingsApplePay }, optional: true, nullable: false, api_name: "applePay"
    end
  end
end
