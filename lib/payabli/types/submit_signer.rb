# frozen_string_literal: true

module Payabli
  module Types
    # The signature details for the application. The signer is the person flagged
    # with `isSigner` on the business, and Payabli records the signer's identity
    # from their person record and business link. Keep the signer's details
    # current with the people endpoints before you submit, because you can't
    # correct them here. Every submit needs a signature in `signature` and
    # `signatureType`. If the signer also signed in your own e-sign tool, send
    # `signedDocumentReference` too, and Payabli records it with the
    # signature. Signer identity fields such as `name`,
    # `email`, `ssn`, and `address` aren't part of this object, and Payabli
    # ignores them if you send them.
    class SubmitSigner < Internal::Types::Model
      field :person_reference, -> { String }, optional: true, nullable: false, api_name: "personReference"

      field :signature, -> { String }, optional: false, nullable: false

      field :signature_type, -> { Payabli::Types::SignatureType }, optional: false, nullable: false, api_name: "signatureType"

      field :signed_document_reference, -> { String }, optional: true, nullable: false, api_name: "signedDocumentReference"

      field :acceptance, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :pci_attestation, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "pciAttestation"

      field :reported_signer_ip, -> { String }, optional: true, nullable: false, api_name: "reportedSignerIp"

      field :additional_data, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false, api_name: "additionalData"
    end
  end
end
