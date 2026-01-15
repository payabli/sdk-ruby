# frozen_string_literal: true

module PayabliSdk
  module Types
    class LinkRow < Internal::Types::Model
      field :columns, -> { Internal::Types::Array[PayabliSdk::Types::LinkData] }, optional: true, nullable: false
    end
  end
end
