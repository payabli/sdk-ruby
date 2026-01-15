# frozen_string_literal: true

module PayabliSdk
  module Types
    class DisplayProperty < Internal::Types::Model
      field :display, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :fixed, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "Fixed"
      field :name, -> { String }, optional: true, nullable: false
    end
  end
end
