# frozen_string_literal: true

module PayabliSdk
  module Types
    class MethodsList < Internal::Types::Model
      field :amex, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :apple_pay, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "applePay"
      field :google_pay, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "googlePay"
      field :discover, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :e_check, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "eCheck"
      field :mastercard, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :visa, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
