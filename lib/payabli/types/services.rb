# frozen_string_literal: true

module Payabli
  module Types
    # Controls which services will be enabled for the merchant.
    class Services < Internal::Types::Model
      field :ach, -> { Payabli::Types::AchSetup }, optional: true, nullable: false
      field :card, -> { Payabli::Types::CardSetup }, optional: true, nullable: false
      field :odp, -> { Payabli::Types::OdpSetup }, optional: true, nullable: false
    end
  end
end
