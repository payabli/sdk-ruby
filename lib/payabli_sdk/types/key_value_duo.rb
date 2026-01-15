# frozen_string_literal: true

module PayabliSdk
  module Types
    class KeyValueDuo < Internal::Types::Model
      field :key, -> { String }, optional: true, nullable: false
      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
