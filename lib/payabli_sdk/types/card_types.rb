# frozen_string_literal: true

module PayabliSdk
  module Types
    class CardTypes < Internal::Types::Model
      field :amex, -> { PayabliSdk::Types::BasicTemplateElement }, optional: true, nullable: false
      field :discover, -> { PayabliSdk::Types::BasicTemplateElement }, optional: true, nullable: false
      field :master_card, -> { PayabliSdk::Types::BasicTemplateElement }, optional: true, nullable: false, api_name: "masterCard"
      field :visa, -> { PayabliSdk::Types::BasicTemplateElement }, optional: true, nullable: false
    end
  end
end
