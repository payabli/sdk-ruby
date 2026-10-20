# frozen_string_literal: true

module Payabli
  module People
    module Types
      class SearchPeopleRequest < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false

        field :org_id, -> { Integer }, optional: false, nullable: false, api_name: "orgId"

        field :body, -> { Payabli::Types::PeopleSearchRequest }, optional: false, nullable: false
      end
    end
  end
end
