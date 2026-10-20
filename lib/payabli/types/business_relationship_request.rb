# frozen_string_literal: true

module Payabli
  module Types
    # Links the person to a business as part of a person-create request. The
    # contact fields here are scoped to the business-person relationship and are
    # distinct from the person's own top-level `primaryEmail`, `primaryPhoneNumber`,
    # and so on.
    class BusinessRelationshipRequest < Internal::Types::Model
      field :business_reference, -> { String }, optional: false, nullable: false, api_name: "businessReference"

      field :person_type, -> { Payabli::Types::PersonType }, optional: true, nullable: false, api_name: "personType"

      field :ownership_percentage, -> { Integer }, optional: true, nullable: false, api_name: "ownershipPercentage"

      field :is_primary_controller, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isPrimaryController"

      field :is_signer, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSigner"

      field :title, -> { String }, optional: true, nullable: false

      field :primary_email, -> { String }, optional: true, nullable: false, api_name: "primaryEmail"

      field :secondary_email, -> { String }, optional: true, nullable: false, api_name: "secondaryEmail"

      field :primary_phone_number, -> { String }, optional: true, nullable: false, api_name: "primaryPhoneNumber"

      field :secondary_phone_number, -> { String }, optional: true, nullable: false, api_name: "secondaryPhoneNumber"

      field :billing_address, -> { Payabli::Types::PersonAddressRequest }, optional: true, nullable: false, api_name: "billingAddress"

      field :mailing_address, -> { Payabli::Types::PersonAddressRequest }, optional: true, nullable: false, api_name: "mailingAddress"
    end
  end
end
