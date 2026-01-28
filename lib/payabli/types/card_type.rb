# frozen_string_literal: true

module Payabli
  module Types
    class CardType < Internal::Types::Model
      field :amex, -> { Payabli::Types::TierItem }, optional: true, nullable: false
      field :discover, -> { Payabli::Types::TierItem }, optional: true, nullable: false
      field :master_card, -> { Payabli::Types::TierItem }, optional: true, nullable: false, api_name: "masterCard"
      field :visa, -> { Payabli::Types::TierItem }, optional: true, nullable: false
    end
  end
end
