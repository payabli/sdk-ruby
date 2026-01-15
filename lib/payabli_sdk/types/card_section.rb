# frozen_string_literal: true

module PayabliSdk
  module Types
    class CardSection < Internal::Types::Model
      field :acceptance, -> { PayabliSdk::Types::CardLinkTypes }, optional: true, nullable: false
      field :fees, -> { PayabliSdk::Types::BasicTable }, optional: true, nullable: false
      field :price, -> { PayabliSdk::Types::BasicTable }, optional: true, nullable: false
    end
  end
end
