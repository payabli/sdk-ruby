# frozen_string_literal: true

module PayabliSdk
  module Types
    class CardLinkTypes < Internal::Types::Model
      field :amex, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :discover, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :mastercard, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :visa, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
    end
  end
end
