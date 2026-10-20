# frozen_string_literal: true

module Payabli
  module Types
    # A page of people.
    class ListPeopleResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[Payabli::Types::PersonSummaryResponse] }, optional: false, nullable: true

      field :pagination, -> { Payabli::Types::Pagination }, optional: false, nullable: true
    end
  end
end
