# frozen_string_literal: true

module PayabliSdk
  module Types
    class TemplateQueryResponse < Internal::Types::Model
      field :records, -> { Internal::Types::Array[PayabliSdk::Types::TemplateQueryRecord] }, optional: true, nullable: false
      field :summary, -> { PayabliSdk::Types::QuerySummary }, optional: true, nullable: false
    end
  end
end
