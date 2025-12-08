# frozen_string_literal: true

module Payabli
  module Types
    class BoardingQueryLinks < Internal::Types::Model
      field :accept_oauth, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "acceptOauth"
      field :accept_register, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "acceptRegister"
      field :entry_attributes, -> { String }, optional: true, nullable: false, api_name: "entryAttributes"
      field :id, -> { Integer }, optional: true, nullable: false
      field :last_updated, -> { String }, optional: true, nullable: false, api_name: "lastUpdated"
      field :org_parent_name, -> { String }, optional: true, nullable: false, api_name: "orgParentName"
      field :reference_name, -> { String }, optional: true, nullable: false, api_name: "referenceName"
      field :reference_template_id, -> { Integer }, optional: true, nullable: false, api_name: "referenceTemplateId"
      field :template_code, -> { String }, optional: true, nullable: false, api_name: "templateCode"
      field :template_name, -> { String }, optional: true, nullable: false, api_name: "templateName"
    end
  end
end
