# frozen_string_literal: true

module Payabli
  module Types
    class CardLinkTypes < Internal::Types::Model
      field :amex, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :discover, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :mastercard, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :visa, -> { Payabli::Types::LinkData }, optional: true, nullable: false
    end
  end
end
