# frozen_string_literal: true

module PayabliSdk
  module V2MoneyInTypes
    module Types
      # Bad request error response (HTTP 400) returned when request validation fails. Follows RFC 7807 Problem Details
      # format with additional Payabli-specific fields.
      class V2BadRequestError < Internal::Types::Model
        field :type, -> { String }, optional: false, nullable: false
        field :title, -> { String }, optional: false, nullable: false
        field :status, -> { Integer }, optional: false, nullable: false
        field :detail, -> { String }, optional: false, nullable: false
        field :instance, -> { String }, optional: false, nullable: false
        field :code, -> { String }, optional: false, nullable: false
        field :errors, -> { Internal::Types::Hash[String, Internal::Types::Array[PayabliSdk::V2MoneyInTypes::Types::V2BadRequestErrorDetail]] }, optional: false, nullable: false
        field :token, -> { String }, optional: false, nullable: true
      end
    end
  end
end
