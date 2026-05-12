# frozen_string_literal: true

module Payabli
  module Types
    class BasicTable < Internal::Types::Model
      field :body, -> { Internal::Types::Array[Payabli::Types::LinkRow] }, optional: true, nullable: false
      field :header, -> { Payabli::Types::LinkRow }, optional: true, nullable: false
    end
  end
end
