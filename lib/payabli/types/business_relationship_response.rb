# frozen_string_literal: true

module Payabli
  module Types
    # The business-person relationship returned when a person is created with a
    # `businessRelationship`. Its contact fields are scoped to the relationship and
    # are distinct from the person's own top-level contact fields.
    class BusinessRelationshipResponse < Internal::Types::Model
      field :business_reference, -> { String }, optional: false, nullable: false, api_name: "businessReference"

      field :person_type, -> { String }, optional: false, nullable: false, api_name: "personType"

      field :ownership_percentage, -> { Integer }, optional: false, nullable: true, api_name: "ownershipPercentage"

      field :beneficial_owner, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "beneficialOwner"

      field :is_primary_controller, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isPrimaryController"

      field :is_signer, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isSigner"

      field :title, -> { String }, optional: false, nullable: true

      field :primary_email, -> { String }, optional: false, nullable: true, api_name: "primaryEmail"

      field :secondary_email, -> { String }, optional: false, nullable: true, api_name: "secondaryEmail"

      field :primary_phone_number, -> { String }, optional: false, nullable: true, api_name: "primaryPhoneNumber"

      field :secondary_phone_number, -> { String }, optional: false, nullable: true, api_name: "secondaryPhoneNumber"

      field :billing_address_uuid, -> { String }, optional: false, nullable: true, api_name: "billingAddressUuid"

      field :mailing_address_uuid, -> { String }, optional: false, nullable: true, api_name: "mailingAddressUuid"
    end
  end
end
