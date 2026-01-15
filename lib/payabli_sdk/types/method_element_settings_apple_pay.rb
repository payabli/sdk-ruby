# frozen_string_literal: true

module PayabliSdk
  module Types
    class MethodElementSettingsApplePay < Internal::Types::Model
      field :button_style, -> { PayabliSdk::Types::MethodElementSettingsApplePayButtonStyle }, optional: true, nullable: false, api_name: "buttonStyle"
      field :button_type, -> { PayabliSdk::Types::MethodElementSettingsApplePayButtonType }, optional: true, nullable: false, api_name: "buttonType"
      field :language, -> { PayabliSdk::Types::MethodElementSettingsApplePayLanguage }, optional: true, nullable: false
    end
  end
end
