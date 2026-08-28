# frozen_string_literal: true

module Payabli
  module Types
    class OperationResult < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :link, -> { String }, optional: false, nullable: false
    end
  end
end
