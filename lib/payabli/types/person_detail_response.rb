# frozen_string_literal: true

module Payabli
  module Types
    # The full detail of a person. Sensitive fields are masked unless read from the unmasked endpoint.
    class PersonDetailResponse < Internal::Types::Model
      field :person_reference, -> { String }, optional: false, nullable: false, api_name: "personReference"

      field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

      field :first_name, -> { String }, optional: false, nullable: true, api_name: "firstName"

      field :middle_name, -> { String }, optional: true, nullable: false, api_name: "middleName"

      field :last_name, -> { String }, optional: false, nullable: true, api_name: "lastName"

      field :primary_email, -> { String }, optional: true, nullable: false, api_name: "primaryEmail"

      field :secondary_email, -> { String }, optional: true, nullable: false, api_name: "secondaryEmail"

      field :primary_phone_number, -> { String }, optional: true, nullable: false, api_name: "primaryPhoneNumber"

      field :secondary_phone_number, -> { String }, optional: true, nullable: false, api_name: "secondaryPhoneNumber"

      field :date_of_birth, -> { String }, optional: true, nullable: false, api_name: "dateOfBirth"

      field :ssn, -> { String }, optional: true, nullable: false

      field :nationality, -> { String }, optional: true, nullable: false

      field :national_id_number, -> { String }, optional: true, nullable: false, api_name: "nationalIdNumber"

      field :national_id_issuer, -> { String }, optional: true, nullable: false, api_name: "nationalIdIssuer"

      field :drivers_license_number, -> { String }, optional: true, nullable: false, api_name: "driversLicenseNumber"

      field :drivers_license_state, -> { String }, optional: true, nullable: false, api_name: "driversLicenseState"

      field :custom_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "customData"

      field :verification_status, -> { String }, optional: false, nullable: false, api_name: "verificationStatus"

      field :addresses, -> { Internal::Types::Array[Payabli::Types::PersonAddressResponse] }, optional: true, nullable: false

      field :identification_documents, -> { Internal::Types::Array[Payabli::Types::IdentificationDocumentResponse] }, optional: true, nullable: false, api_name: "identificationDocuments"

      field :business_relationship, -> { Payabli::Types::BusinessRelationshipResponse }, optional: true, nullable: false, api_name: "businessRelationship"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :last_updated, -> { String }, optional: false, nullable: false, api_name: "lastUpdated"

      field :links, -> { Payabli::Types::PersonLinks }, optional: false, nullable: false, api_name: "_links"
    end
  end
end
