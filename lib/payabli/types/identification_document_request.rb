# frozen_string_literal: true

module Payabli
  module Types
    # A government-issued identification document included in a person request.
    class IdentificationDocumentRequest < Internal::Types::Model
      field :type, -> { String }, optional: true, nullable: false

      field :number, -> { String }, optional: true, nullable: false

      field :issuing_state, -> { String }, optional: true, nullable: false, api_name: "issuingState"

      field :issuing_country, -> { String }, optional: true, nullable: false, api_name: "issuingCountry"

      field :expiration_date, -> { String }, optional: true, nullable: false, api_name: "expirationDate"
    end
  end
end
