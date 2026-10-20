# frozen_string_literal: true

module Payabli
  module Types
    # The reference and updated timestamp after a person update.
    class PersonUpdatedResponse < Internal::Types::Model
      field :person_reference, -> { String }, optional: false, nullable: false, api_name: "personReference"

      field :last_updated, -> { String }, optional: false, nullable: false, api_name: "lastUpdated"

      field :links, -> { Payabli::Types::PersonLinks }, optional: false, nullable: false, api_name: "_links"
    end
  end
end
