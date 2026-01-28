# frozen_string_literal: true

module Payabli
  module Types
    class QueryBoardingLinksResponseRecordsItem < Internal::Types::Model
      field :accept_oauth, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "AcceptOauth"
      field :accept_register, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "AcceptRegister"
      field :entry_attributes, -> { String }, optional: true, nullable: false, api_name: "EntryAttributes"
      field :id, -> { Integer }, optional: true, nullable: false, api_name: "Id"
      field :last_updated, -> { String }, optional: true, nullable: false, api_name: "LastUpdated"
      field :org_parent_name, -> { String }, optional: true, nullable: false, api_name: "OrgParentName"
      field :reference_name, -> { String }, optional: true, nullable: false, api_name: "ReferenceName"
      field :reference_template_id, -> { Integer }, optional: true, nullable: false, api_name: "ReferenceTemplateId"
      field :template_code, -> { String }, optional: true, nullable: false, api_name: "TemplateCode"
      field :template_name, -> { String }, optional: true, nullable: false, api_name: "TemplateName"
    end
  end
end
