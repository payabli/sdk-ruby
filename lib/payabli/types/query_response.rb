# frozen_string_literal: true

module Payabli
  module Types
    class QueryResponse < Internal::Types::Model
      field :records, lambda {
        Internal::Types::Array[Internal::Types::Hash[String, Object]]
      }, optional: true, nullable: false
      field :summary, -> { String }, optional: true, nullable: false
    end
  end
end
