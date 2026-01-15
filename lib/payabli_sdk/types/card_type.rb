# frozen_string_literal: true

module PayabliSdk
  module Types
    class CardType < Internal::Types::Model
      field :amex, -> { PayabliSdk::Types::TierItem }, optional: true, nullable: false
      field :discover, -> { PayabliSdk::Types::TierItem }, optional: true, nullable: false
      field :master_card, -> { PayabliSdk::Types::TierItem }, optional: true, nullable: false, api_name: "masterCard"
      field :visa, -> { PayabliSdk::Types::TierItem }, optional: true, nullable: false
    end
  end
end
