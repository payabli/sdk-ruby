# frozen_string_literal: true

module Payabli
  module Types
    class TemplateQueryResponse < Internal::Types::Model
      field :records, -> { Internal::Types::Array[Payabli::Types::TemplateQueryRecord] }, optional: true, nullable: false
      field :summary, -> { Payabli::Types::QuerySummary }, optional: true, nullable: false
    end
  end
end
