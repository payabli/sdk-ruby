# frozen_string_literal: true

module Payabli
  module Types
    # Settings for wallet payment methods.
    class MethodElementSettings < Internal::Types::Model
      field :apple_pay, lambda {
        Payabli::Types::MethodElementSettingsApplePay
      }, optional: true, nullable: false, api_name: "applePay"
    end
  end
end
