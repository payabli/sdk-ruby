# frozen_string_literal: true

module Payabli
  module Types
    # A page of boarding templates.
    class ListTemplatesResponse < Internal::Types::Model
      field :summary, -> { Payabli::Types::TemplatesSummary }, optional: false, nullable: false, api_name: "Summary"

      field :records, -> { Internal::Types::Array[Payabli::Types::Template] }, optional: false, nullable: false, api_name: "Records"
    end
  end
end
