# frozen_string_literal: true

module Payabli
  module Types
    # An immutable snapshot of a template's content. Each save in the Payabli
    # Portal appends a new version; the template's `currentVersionUuid` points at
    # the active one. The configuration objects (services, documents, devices, and
    # so on) are authored in the Portal.
    class TemplateVersion < Internal::Types::Model
      field :uuid, -> { String }, optional: false, nullable: false

      field :version, -> { Integer }, optional: false, nullable: false

      field :services, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :field_configurations, -> { Internal::Types::Array[Object] }, optional: false, nullable: true, api_name: "fieldConfigurations"

      field :conditional_rules, -> { Internal::Types::Array[Object] }, optional: false, nullable: true, api_name: "conditionalRules"

      field :documents, -> { Internal::Types::Array[Object] }, optional: false, nullable: true

      field :devices, -> { Internal::Types::Array[Object] }, optional: false, nullable: true

      field :hidden_sections, -> { Internal::Types::Array[Object] }, optional: false, nullable: true, api_name: "hiddenSections"

      field :allowed_mccs, -> { Internal::Types::Array[Integer] }, optional: false, nullable: true, api_name: "allowedMccs"

      field :underwriting, -> { Payabli::Types::UnderwritingMode }, optional: false, nullable: false

      field :mpa_content, -> { String }, optional: false, nullable: true, api_name: "mpaContent"

      field :payin_pricing_id, -> { Integer }, optional: false, nullable: true, api_name: "payinPricingId"

      field :payout_pricing_id, -> { Integer }, optional: false, nullable: true, api_name: "payoutPricingId"

      field :allow_guided_tour, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "allowGuidedTour"

      field :allow_business_prefill, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "allowBusinessPrefill"

      field :allow_save_for_later, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "allowSaveForLater"

      field :allow_multiple_banks, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "allowMultipleBanks"

      field :allow_service_selection, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "allowServiceSelection"

      field :allow_device_selection, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "allowDeviceSelection"

      field :allow_amigo_chat, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "allowAmigoChat"

      field :allow_user_creation, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "allowUserCreation"

      field :allow_people_prefill, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "allowPeoplePrefill"

      field :vertical_progress, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "verticalProgress"

      field :use_floating_inputs, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "useFloatingInputs"

      field :center_content, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "centerContent"

      field :allow_real_time_bank_verification, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "allowRealTimeBankVerification"

      field :allow_checkbox_signing, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "allowCheckboxSigning"

      field :allow_typed_signature, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "allowTypedSignature"

      field :allow_written_signature, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "allowWrittenSignature"

      field :allow_multi_owner_esign, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "allowMultiOwnerEsign"

      field :allow_confirmation_and_attestation, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "allowConfirmationAndAttestation"

      field :allow_pci_attestation, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "allowPCIAttestation"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :created_by, -> { String }, optional: false, nullable: false, api_name: "createdBy"
    end
  end
end
