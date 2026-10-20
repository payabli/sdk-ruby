# frozen_string_literal: true

module Payabli
  module People
    module Types
      class UpdatePersonRequest < Internal::Types::Model
        field :person_reference, -> { String }, optional: false, nullable: false, api_name: "personReference"

        field :first_name, -> { String }, optional: true, nullable: false, api_name: "firstName"

        field :middle_name, -> { String }, optional: true, nullable: false, api_name: "middleName"

        field :last_name, -> { String }, optional: true, nullable: false, api_name: "lastName"

        field :primary_email, -> { String }, optional: true, nullable: false, api_name: "primaryEmail"

        field :secondary_email, -> { String }, optional: true, nullable: false, api_name: "secondaryEmail"

        field :primary_phone_number, -> { String }, optional: true, nullable: false, api_name: "primaryPhoneNumber"

        field :secondary_phone_number, -> { String }, optional: true, nullable: false, api_name: "secondaryPhoneNumber"

        field :nationality, -> { String }, optional: true, nullable: false

        field :national_id_issuer, -> { String }, optional: true, nullable: false, api_name: "nationalIdIssuer"

        field :drivers_license_number, -> { String }, optional: true, nullable: false, api_name: "driversLicenseNumber"

        field :drivers_license_state, -> { String }, optional: true, nullable: false, api_name: "driversLicenseState"

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :custom_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "customData"

        field :addresses, -> { Internal::Types::Array[Payabli::Types::PersonAddressRequest] }, optional: true, nullable: false

        field :identification_documents, -> { Internal::Types::Array[Payabli::Types::IdentificationDocumentRequest] }, optional: true, nullable: false, api_name: "identificationDocuments"
      end
    end
  end
end
