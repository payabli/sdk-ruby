# frozen_string_literal: true

module PayabliSdk
  module Types
    class QueryResponse < Internal::Types::Model
      field :records, -> { Internal::Types::Array[Object] }, optional: true, nullable: false
      field :summary, -> { String }, optional: true, nullable: false
    end
  end
end
