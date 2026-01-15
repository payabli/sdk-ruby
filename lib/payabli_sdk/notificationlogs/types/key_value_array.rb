# frozen_string_literal: true

module PayabliSdk
  module Notificationlogs
    module Types
      class KeyValueArray < Internal::Types::Model
        field :key, -> { String }, optional: true, nullable: false
        field :value, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
