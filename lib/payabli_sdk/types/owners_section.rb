# frozen_string_literal: true

module PayabliSdk
  module Types
    # Information about a business owner.
    class OwnersSection < Internal::Types::Model
      field :contact_email, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "contactEmail"
      field :contact_name, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "contactName"
      field :contact_phone, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "contactPhone"
      field :contact_title, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "contactTitle"
      field :multiple_contacts, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "multipleContacts"
      field :multiple_owners, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "multipleOwners"
      field :oaddress, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :ocity, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :ocountry, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :odriverstate, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :ostate, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :ownerdob, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :ownerdriver, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :owneremail, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :ownername, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :ownerpercent, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :ownerphone_1, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "ownerphone1"
      field :ownerphone_2, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "ownerphone2"
      field :ownerssn, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :ownertitle, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :ozip, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :sub_footer, -> { String }, optional: true, nullable: false, api_name: "subFooter"
      field :sub_header, -> { String }, optional: true, nullable: false, api_name: "subHeader"
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :additional_data, -> { PayabliSdk::Types::TemplateAdditionalDataSection }, optional: true, nullable: false, api_name: "additionalData"
    end
  end
end
