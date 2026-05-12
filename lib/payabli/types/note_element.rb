# frozen_string_literal: true

module Payabli
  module Types
    class NoteElement < Internal::Types::Model
      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :header, -> { String }, optional: true, nullable: false
      field :order, -> { Integer }, optional: true, nullable: false
      field :placeholder, -> { String }, optional: true, nullable: false
      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
