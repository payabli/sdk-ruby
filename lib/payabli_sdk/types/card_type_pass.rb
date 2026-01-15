# frozen_string_literal: true

module PayabliSdk
  module Types
    class CardTypePass < Internal::Types::Model
      field :amex, -> { PayabliSdk::Types::TierItemPass }, optional: true, nullable: false
      field :discover, -> { PayabliSdk::Types::TierItemPass }, optional: true, nullable: false
      field :master_card, -> { PayabliSdk::Types::TierItemPass }, optional: true, nullable: false, api_name: "masterCard"
      field :visa, -> { PayabliSdk::Types::TierItemPass }, optional: true, nullable: false
    end
  end
end
