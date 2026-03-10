# frozen_string_literal: true

module Payabli
  module MoneyOutTypes
    module Types
      # Configuration for payment method selection on Pay Out payment links.
      class MethodElementOut < Internal::Types::Model
        field :all_methods_checked, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "allMethodsChecked"
        field :allow_multiple_methods, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "allowMultipleMethods"
        field :default_method, -> { String }, optional: true, nullable: false, api_name: "defaultMethod"
        field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
        field :header, -> { String }, optional: true, nullable: false
        field :methods, -> { Payabli::MoneyOutTypes::Types::MethodsListOut }, optional: true, nullable: false
        field :order, -> { Integer }, optional: true, nullable: false
        field :show_preview_virtual_card, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "showPreviewVirtualCard"
      end
    end
  end
end
