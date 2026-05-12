# frozen_string_literal: true

module Payabli
  module Types
    class LinkData < Internal::Types::Model
      field :ro, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :rq, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :validator, -> { String }, optional: true, nullable: false
      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
