# frozen_string_literal: true

module Payabli
  module BoardingTemplates
    module Types
      class ListTemplatesBoardingTemplatesRequest < Internal::Types::Model
        field :org_id, -> { Integer }, optional: false, nullable: false, api_name: "orgId"

        field :status, -> { Payabli::Types::TemplateStatus }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :slug, -> { String }, optional: true, nullable: false

        field :org_name, -> { String }, optional: true, nullable: false, api_name: "orgName"

        field :inherited, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :from_record, -> { Integer }, optional: true, nullable: false, api_name: "fromRecord"

        field :limit_record, -> { Integer }, optional: true, nullable: false, api_name: "limitRecord"
      end
    end
  end
end
