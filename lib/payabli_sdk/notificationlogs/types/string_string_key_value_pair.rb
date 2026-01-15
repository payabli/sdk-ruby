# frozen_string_literal: true

module PayabliSdk
  module Notificationlogs
    module Types
      class StringStringKeyValuePair < Internal::Types::Model
        field :key, -> { String }, optional: true, nullable: false
        field :value, -> { String }, optional: true, nullable: false
      end
    end
  end
end
