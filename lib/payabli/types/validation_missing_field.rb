# frozen_string_literal: true

module Payabli
  module Types
    # A field that's missing or invalid for the requested services.
    class ValidationMissingField < Internal::Types::Model
      field :field, -> { String }, optional: false, nullable: false

      field :label, -> { String }, optional: false, nullable: false

      field :reason, -> { String }, optional: false, nullable: false
    end
  end
end
