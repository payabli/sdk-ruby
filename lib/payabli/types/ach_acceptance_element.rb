# frozen_string_literal: true

module Payabli
  module Types
    class AchAcceptanceElement < Internal::Types::Model
      field :types, -> { Payabli::Types::AchTypes }, optional: true, nullable: false
      field :pos_col, -> { Integer }, optional: true, nullable: false, api_name: "posCol"
      field :pos_row, -> { Integer }, optional: true, nullable: false, api_name: "posRow"
      field :read_only, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "readOnly"
      field :value, -> { String }, optional: true, nullable: false
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
