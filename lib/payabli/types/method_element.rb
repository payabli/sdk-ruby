# frozen_string_literal: true

module Payabli
  module Types
    class MethodElement < Internal::Types::Model
      field :all_methods_checked, lambda {
        Internal::Types::Boolean
      }, optional: true, nullable: false, api_name: "allMethodsChecked"
      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :header, -> { String }, optional: true, nullable: false
      field :methods, -> { Payabli::Types::MethodsList }, optional: true, nullable: false
      field :order, -> { Integer }, optional: true, nullable: false
      field :settings, -> { Payabli::Types::MethodElementSettings }, optional: true, nullable: false
    end
  end
end
