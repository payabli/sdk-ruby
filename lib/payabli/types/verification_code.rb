# frozen_string_literal: true

module Payabli
  module Types
    # A single bank-verification result code returned by the verification provider.
    class VerificationCode < Internal::Types::Model
      field :code, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :description, -> { String }, optional: false, nullable: true
    end
  end
end
