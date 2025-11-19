# frozen_string_literal: true

module Payabli
  module Types
    class MethodElementSettingsApplePay < Internal::Types::Model
      field :button_style, lambda {
        Payabli::Types::MethodElementSettingsApplePayButtonStyle
      }, optional: true, nullable: false, api_name: "buttonStyle"
      field :button_type, lambda {
        Payabli::Types::MethodElementSettingsApplePayButtonType
      }, optional: true, nullable: false, api_name: "buttonType"
      field :language, -> { Payabli::Types::MethodElementSettingsApplePayLanguage }, optional: true, nullable: false
    end
  end
end
