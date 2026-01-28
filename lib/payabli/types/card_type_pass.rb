# frozen_string_literal: true

module Payabli
  module Types
    class CardTypePass < Internal::Types::Model
      field :amex, -> { Payabli::Types::TierItemPass }, optional: true, nullable: false
      field :discover, -> { Payabli::Types::TierItemPass }, optional: true, nullable: false
      field :master_card, -> { Payabli::Types::TierItemPass }, optional: true, nullable: false, api_name: "masterCard"
      field :visa, -> { Payabli::Types::TierItemPass }, optional: true, nullable: false
    end
  end
end
