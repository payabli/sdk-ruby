# frozen_string_literal: true

module PayabliSdk
  module Types
    class TemplateAdditionalDataField < Internal::Types::Model
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :read_only, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "readOnly"
      field :required, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :pos_row, -> { Integer }, optional: true, nullable: false, api_name: "posRow"
      field :pos_col, -> { Integer }, optional: true, nullable: false, api_name: "posCol"
      field :value, -> { String }, optional: true, nullable: false
      field :label, -> { String }, optional: true, nullable: false
      field :type, -> { String }, optional: true, nullable: false
    end
  end
end
