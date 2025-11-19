# frozen_string_literal: true

module Payabli
  module Types
    class TemplateAdditionalDataSection < Internal::Types::Model
      field :visible, -> { Internal::Types::Boolean }, optional: false, nullable: false
      field :fields, lambda {
        Internal::Types::Hash[String, Payabli::Types::TemplateAdditionalDataField]
      }, optional: false, nullable: false
    end
  end
end
