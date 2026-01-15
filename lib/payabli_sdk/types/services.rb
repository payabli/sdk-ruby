# frozen_string_literal: true

module PayabliSdk
  module Types
    # Controls which services will be enabled for the merchant.
    class Services < Internal::Types::Model
      field :ach, -> { PayabliSdk::Types::AchSetup }, optional: true, nullable: false
      field :card, -> { PayabliSdk::Types::CardSetup }, optional: true, nullable: false
      field :odp, -> { PayabliSdk::Types::OdpSetup }, optional: true, nullable: false
    end
  end
end
