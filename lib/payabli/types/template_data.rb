# frozen_string_literal: true

module Payabli
  module Types
    # Object containing the template's data.
    class TemplateData < Internal::Types::Model
      field :org_id, -> { Integer }, optional: true, nullable: false, api_name: "orgId"
      field :pricing_id, -> { Integer }, optional: true, nullable: false, api_name: "pricingId"
      field :template_code, -> { String }, optional: true, nullable: false, api_name: "templateCode"
      field :template_content, -> { Payabli::Types::TemplateContent }, optional: true, nullable: false, api_name: "templateContent"
      field :template_description, -> { String }, optional: true, nullable: false, api_name: "templateDescription"
      field :template_name, -> { String }, optional: true, nullable: false, api_name: "templateName"
    end
  end
end
