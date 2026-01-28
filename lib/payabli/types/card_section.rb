# frozen_string_literal: true

module Payabli
  module Types
    class CardSection < Internal::Types::Model
      field :acceptance, -> { Payabli::Types::CardLinkTypes }, optional: true, nullable: false
      field :fees, -> { Payabli::Types::BasicTable }, optional: true, nullable: false
      field :price, -> { Payabli::Types::BasicTable }, optional: true, nullable: false
    end
  end
end
