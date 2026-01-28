# frozen_string_literal: true

module Payabli
  module Types
    class TemplateQueryRecord < Internal::Types::Model
      field :add_price, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "addPrice"
      field :boarding_links, -> { Internal::Types::Array[Payabli::Types::BoardingQueryLinks] }, optional: true, nullable: false, api_name: "boardingLinks"
      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"
      field :id_template, -> { Integer }, optional: true, nullable: false, api_name: "idTemplate"
      field :is_root, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isRoot"
      field :org_parent_name, -> { String }, optional: true, nullable: false, api_name: "orgParentName"
      field :recipient_email_notification, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "recipientEmailNotification"
      field :resumable, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :template_code, -> { String }, optional: true, nullable: false, api_name: "templateCode"
      field :template_content, -> { Payabli::Types::TemplateContentResponse }, optional: true, nullable: false, api_name: "templateContent"
      field :template_description, -> { String }, optional: true, nullable: false, api_name: "templateDescription"
      field :template_title, -> { String }, optional: true, nullable: false, api_name: "templateTitle"
      field :used_by, -> { Integer }, optional: true, nullable: false, api_name: "usedBy"
    end
  end
end
