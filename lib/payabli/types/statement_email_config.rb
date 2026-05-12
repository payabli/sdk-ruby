# frozen_string_literal: true

module Payabli
  module Types
    # Configuration for statement email recipients and the sender address.
    class StatementEmailConfig < Internal::Types::Model
      field :sender, -> { String }, optional: true, nullable: false
      field :recipients, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
