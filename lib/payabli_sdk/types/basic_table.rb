# frozen_string_literal: true

module PayabliSdk
  module Types
    class BasicTable < Internal::Types::Model
      field :body, -> { Internal::Types::Array[PayabliSdk::Types::LinkRow] }, optional: true, nullable: false
      field :header, -> { PayabliSdk::Types::LinkRow }, optional: true, nullable: false
    end
  end
end
