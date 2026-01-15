# frozen_string_literal: true

module PayabliSdk
  module Types
    class BasicTemplateElement < Internal::Types::Model
      field :read_only, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "readOnly"
      field :required, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
