# frozen_string_literal: true

module PayabliSdk
  module Types
    class AchSection < Internal::Types::Model
      field :acceptance, -> { PayabliSdk::Types::AchLinkTypes }, optional: true, nullable: false
      field :fees, -> { PayabliSdk::Types::BasicTable }, optional: true, nullable: false
      field :price, -> { PayabliSdk::Types::BasicTable }, optional: true, nullable: false
    end
  end
end
