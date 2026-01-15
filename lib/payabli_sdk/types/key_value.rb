# frozen_string_literal: true

module PayabliSdk
  module Types
    class KeyValue < Internal::Types::Model
      field :key, -> { String }, optional: true, nullable: false
      field :read_only, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "readOnly"
      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
