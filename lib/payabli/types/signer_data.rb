# frozen_string_literal: true

module Payabli
  module Types
    # Information about the application's signer.
    class SignerData < Internal::Types::Model
      field :signer_uuid, -> { String }, optional: true, nullable: false, api_name: "signerUuid"
      field :name, -> { String }, optional: true, nullable: false
      field :ssn, -> { String }, optional: true, nullable: false
      field :dob, -> { String }, optional: true, nullable: false
      field :phone, -> { String }, optional: true, nullable: false
      field :email, -> { String }, optional: true, nullable: false
      field :address, -> { String }, optional: true, nullable: false
      field :address_1, -> { String }, optional: true, nullable: false, api_name: "address1"
      field :city, -> { String }, optional: true, nullable: false
      field :state, -> { String }, optional: true, nullable: false
      field :zip, -> { String }, optional: true, nullable: false
      field :country, -> { String }, optional: true, nullable: false
      field :acceptance, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :signed_document_reference, -> { String }, optional: true, nullable: false, api_name: "signedDocumentReference"
      field :pci_attestation, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "pciAttestation"
      field :attestation_date, -> { String }, optional: true, nullable: false, api_name: "attestationDate"
      field :sign_date, -> { String }, optional: true, nullable: false, api_name: "signDate"
      field :additional_data, -> { String }, optional: true, nullable: false, api_name: "additionalData"
    end
  end
end
