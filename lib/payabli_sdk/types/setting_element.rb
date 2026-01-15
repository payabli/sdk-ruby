# frozen_string_literal: true

module PayabliSdk
  module Types
    class SettingElement < Internal::Types::Model
      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :fields, -> { Internal::Types::Array[PayabliSdk::Types::DisplayProperty] }, optional: true, nullable: false
      field :order, -> { Integer }, optional: true, nullable: false
      field :send_auto, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "sendAuto"
      field :send_manual, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "sendManual"
    end
  end
end
