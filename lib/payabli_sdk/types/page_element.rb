# frozen_string_literal: true

module PayabliSdk
  module Types
    class PageElement < Internal::Types::Model
      field :description, -> { String }, optional: true, nullable: false
      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :header, -> { String }, optional: true, nullable: false
      field :order, -> { Integer }, optional: true, nullable: false
    end
  end
end
