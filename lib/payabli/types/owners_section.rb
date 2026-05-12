# frozen_string_literal: true

module Payabli
  module Types
    # Information about a business owner.
    class OwnersSection < Internal::Types::Model
      field :contact_email, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "contactEmail"
      field :contact_name, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "contactName"
      field :contact_phone, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "contactPhone"
      field :contact_title, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "contactTitle"
      field :multiple_contacts, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "multipleContacts"
      field :multiple_owners, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "multipleOwners"
      field :oaddress, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :ocity, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :ocountry, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :odriverstate, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :ostate, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :ownerdob, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :ownerdriver, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :owneremail, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :ownername, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :ownerpercent, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :ownerphone_1, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "ownerphone1"
      field :ownerphone_2, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "ownerphone2"
      field :ownerssn, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :ownertitle, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :ozip, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :sub_footer, -> { String }, optional: true, nullable: false, api_name: "subFooter"
      field :sub_header, -> { String }, optional: true, nullable: false, api_name: "subHeader"
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :additional_data, -> { Payabli::Types::TemplateAdditionalDataSection }, optional: true, nullable: false, api_name: "additionalData"
    end
  end
end
