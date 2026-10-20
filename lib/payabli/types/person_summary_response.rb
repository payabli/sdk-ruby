# frozen_string_literal: true

module Payabli
  module Types
    # A person as it appears in a list response.
    class PersonSummaryResponse < Internal::Types::Model
      field :links, -> { Payabli::Types::PersonLinks }, optional: false, nullable: false, api_name: "_links"

      field :person_reference, -> { String }, optional: false, nullable: false, api_name: "personReference"

      field :first_name, -> { String }, optional: false, nullable: true, api_name: "firstName"

      field :last_name, -> { String }, optional: false, nullable: true, api_name: "lastName"

      field :email, -> { String }, optional: true, nullable: false

      field :verification_status, -> { String }, optional: false, nullable: false, api_name: "verificationStatus"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :last_updated, -> { String }, optional: false, nullable: false, api_name: "lastUpdated"
    end
  end
end
