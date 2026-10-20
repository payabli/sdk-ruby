# frozen_string_literal: true

module Payabli
  module Types
    # A single identity match returned by a search.
    class PeopleSearchResultResponse < Internal::Types::Model
      field :person_reference, -> { String }, optional: true, nullable: false, api_name: "personReference"

      field :first_name, -> { String }, optional: true, nullable: false, api_name: "firstName"

      field :last_name, -> { String }, optional: true, nullable: false, api_name: "lastName"

      field :date_of_birth, -> { String }, optional: true, nullable: false, api_name: "dateOfBirth"

      field :primary_email, -> { String }, optional: true, nullable: false, api_name: "primaryEmail"

      field :primary_phone, -> { String }, optional: true, nullable: false, api_name: "primaryPhone"

      field :risk_decision, -> { String }, optional: true, nullable: false, api_name: "riskDecision"

      field :match_score, -> { Integer }, optional: true, nullable: false, api_name: "matchScore"

      field :is_top_match, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isTopMatch"

      field :is_from_vendor, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isFromVendor"

      field :phones, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :emails, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :address_count, -> { Integer }, optional: true, nullable: false, api_name: "addressCount"

      field :phone_count, -> { Integer }, optional: true, nullable: false, api_name: "phoneCount"

      field :email_count, -> { Integer }, optional: true, nullable: false, api_name: "emailCount"
    end
  end
end
