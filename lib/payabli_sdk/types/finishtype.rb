# frozen_string_literal: true

module PayabliSdk
  module Types
    class Finishtype < Internal::Types::Model
      field :calendar, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :until_cancelled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "untilCancelled"
    end
  end
end
