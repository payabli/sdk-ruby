# frozen_string_literal: true

module Payabli
  module Types
    # A page of businesses.
    class ListBusinessesResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[Payabli::Types::BusinessSummaryResponse] }, optional: false, nullable: true

      field :pagination, -> { Payabli::Types::Pagination }, optional: false, nullable: true
    end
  end
end
