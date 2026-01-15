# frozen_string_literal: true

module PayabliSdk
  module Types
    class MethodElement < Internal::Types::Model
      field :all_methods_checked, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "allMethodsChecked"
      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :header, -> { String }, optional: true, nullable: false
      field :methods, -> { PayabliSdk::Types::MethodsList }, optional: true, nullable: false
      field :order, -> { Integer }, optional: true, nullable: false
      field :settings, -> { PayabliSdk::Types::MethodElementSettings }, optional: true, nullable: false
    end
  end
end
