# frozen_string_literal: true

module PayabliSdk
  module Types
    class SignerSection < Internal::Types::Model
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :name, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :ssn, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :dob, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :phone, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :email, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :address, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :address_1, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "address1"
      field :city, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :country, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :state, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :zip, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :acceptance, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :signed_document_reference, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "signedDocumentReference"
      field :additional_data, -> { PayabliSdk::Types::TemplateAdditionalDataSection }, optional: true, nullable: false, api_name: "additionalData"
    end
  end
end
