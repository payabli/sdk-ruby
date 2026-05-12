# frozen_string_literal: true

module Payabli
  module Types
    class BoardingLinkQueryRecord < Internal::Types::Model
      field :accept_oauth, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "acceptOauth"
      field :accept_register, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "acceptRegister"
      field :builder_data, -> { Payabli::Types::BuilderData }, optional: true, nullable: false, api_name: "builderData"
      field :entry_attributes, -> { String }, optional: true, nullable: false, api_name: "entryAttributes"
      field :id, -> { Integer }, optional: true, nullable: false
      field :logo, -> { Payabli::Types::FileContent }, optional: true, nullable: false
      field :org_id, -> { Integer }, optional: true, nullable: false, api_name: "orgId"
      field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier:"
      field :recipient_email_notification, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "recipientEmailNotification"
      field :reference_name, -> { String }, optional: true, nullable: false, api_name: "referenceName"
      field :reference_template_id, -> { Integer }, optional: true, nullable: false, api_name: "referenceTemplateId"
      field :resumable, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
