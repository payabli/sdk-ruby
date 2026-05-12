# frozen_string_literal: true

module Payabli
  module GhostCard
    module Types
      class UpdateCardRequestBody < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false
        field :card_token, -> { String }, optional: false, nullable: false, api_name: "cardToken"
        field :status, -> { Payabli::GhostCard::Types::CardStatus }, optional: true, nullable: false
      end
    end
  end
end
