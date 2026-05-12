# frozen_string_literal: true

module Payabli
  module Types
    class PayorFields < Internal::Types::Model
      field :display, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :fixed, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :identifier, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :label, -> { String }, optional: true, nullable: false
      field :name, -> { String }, optional: true, nullable: false
      field :order, -> { Integer }, optional: true, nullable: false
      field :required, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :validation, -> { String }, optional: true, nullable: false
      field :value, -> { String }, optional: true, nullable: false
      field :width, -> { Integer }, optional: true, nullable: false
    end
  end
end
