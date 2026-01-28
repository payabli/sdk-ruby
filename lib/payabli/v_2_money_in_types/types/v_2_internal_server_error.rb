# frozen_string_literal: true

module Payabli
  module V2MoneyInTypes
    module Types
      # Internal server error response (HTTP 500) returned when an unexpected error occurs. Follows RFC 7807 Problem
      # Details format.
      class V2InternalServerError < Internal::Types::Model
        field :title, -> { String }, optional: false, nullable: false
        field :status, -> { Integer }, optional: false, nullable: false
        field :detail, -> { String }, optional: false, nullable: false
        field :instance, -> { String }, optional: false, nullable: false
      end
    end
  end
end
