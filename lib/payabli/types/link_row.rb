# frozen_string_literal: true

module Payabli
  module Types
    class LinkRow < Internal::Types::Model
      field :columns, -> { Internal::Types::Array[Payabli::Types::LinkData] }, optional: true, nullable: false
    end
  end
end
