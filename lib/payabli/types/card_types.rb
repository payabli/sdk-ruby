# frozen_string_literal: true

module Payabli
  module Types
    class CardTypes < Internal::Types::Model
      field :amex, -> { Payabli::Types::BasicTemplateElement }, optional: true, nullable: false
      field :discover, -> { Payabli::Types::BasicTemplateElement }, optional: true, nullable: false
      field :master_card, lambda {
        Payabli::Types::BasicTemplateElement
      }, optional: true, nullable: false, api_name: "masterCard"
      field :visa, -> { Payabli::Types::BasicTemplateElement }, optional: true, nullable: false
    end
  end
end
