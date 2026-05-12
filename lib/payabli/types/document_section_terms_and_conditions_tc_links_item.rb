# frozen_string_literal: true

module Payabli
  module Types
    class DocumentSectionTermsAndConditionsTcLinksItem < Internal::Types::Model
      field :label, -> { String }, optional: true, nullable: false
      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
