# frozen_string_literal: true

module PayabliSdk
  module Types
    class HeaderElement < Internal::Types::Model
      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :header, -> { String }, optional: true, nullable: false
      field :order, -> { Integer }, optional: true, nullable: false
    end
  end
end
