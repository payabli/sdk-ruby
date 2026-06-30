# frozen_string_literal: true

module Payabli
  module Types
    class MethodElement < Internal::Types::Model
      field :all_methods_checked, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "allMethodsChecked"

      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :header, -> { String }, optional: true, nullable: false

      field :methods, -> { Payabli::Types::MethodsList }, optional: true, nullable: false

      field :order, -> { Integer }, optional: true, nullable: false

      field :payment_description, -> { String }, optional: true, nullable: false, api_name: "paymentDescription"

      field :settings, -> { Payabli::Types::MethodElementSettings }, optional: true, nullable: false

      field :show_save_method, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "showSaveMethod"
    end
  end
end
