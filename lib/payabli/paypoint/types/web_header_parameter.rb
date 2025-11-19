# frozen_string_literal: true

module Payabli
  module Paypoint
    module Types
      class WebHeaderParameter < Internal::Types::Model
        field :key, -> { String }, optional: false, nullable: false
        field :value, -> { String }, optional: false, nullable: false
      end
    end
  end
end
