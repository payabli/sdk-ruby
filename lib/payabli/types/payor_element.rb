# frozen_string_literal: true

module Payabli
  module Types
    class PayorElement < Internal::Types::Model
      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :fields, -> { Internal::Types::Array[Payabli::Types::PayorFields] }, optional: true, nullable: false
      field :header, -> { String }, optional: true, nullable: false
      field :order, -> { Integer }, optional: true, nullable: false
    end
  end
end
