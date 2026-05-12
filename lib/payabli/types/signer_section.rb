# frozen_string_literal: true

module Payabli
  module Types
    class SignerSection < Internal::Types::Model
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :name, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :ssn, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :dob, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :phone, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :email, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :address, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :address_1, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "address1"
      field :city, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :country, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :state, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :zip, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :acceptance, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :signed_document_reference, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "signedDocumentReference"
      field :additional_data, -> { Payabli::Types::TemplateAdditionalDataSection }, optional: true, nullable: false, api_name: "additionalData"
    end
  end
end
