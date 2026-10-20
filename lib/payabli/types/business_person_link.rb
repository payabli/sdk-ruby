# frozen_string_literal: true

module Payabli
  module Types
    # A person's link to a business, with the relationship's role, ownership, and relationship-scoped contact details.
    class BusinessPersonLink < Internal::Types::Model
      field :business_reference, -> { String }, optional: false, nullable: false, api_name: "businessReference"

      field :person_reference, -> { String }, optional: false, nullable: false, api_name: "personReference"

      field :person_type, -> { String }, optional: false, nullable: false, api_name: "personType"

      field :ownership_percentage, -> { Integer }, optional: true, nullable: false, api_name: "ownershipPercentage"

      field :beneficial_owner, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "beneficialOwner"

      field :is_primary_controller, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isPrimaryController"

      field :is_signer, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isSigner"

      field :title, -> { String }, optional: false, nullable: true

      field :primary_email, -> { String }, optional: false, nullable: true, api_name: "primaryEmail"

      field :secondary_email, -> { String }, optional: false, nullable: true, api_name: "secondaryEmail"

      field :primary_phone_number, -> { String }, optional: false, nullable: true, api_name: "primaryPhoneNumber"

      field :secondary_phone_number, -> { String }, optional: false, nullable: true, api_name: "secondaryPhoneNumber"

      field :billing_address_uuid, -> { String }, optional: true, nullable: false, api_name: "billingAddressUuid"

      field :mailing_address_uuid, -> { String }, optional: true, nullable: false, api_name: "mailingAddressUuid"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"

      field :links, -> { Payabli::Types::BusinessPersonLinks }, optional: false, nullable: false, api_name: "_links"
    end
  end
end
