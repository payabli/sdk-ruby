# frozen_string_literal: true

module PayabliSdk
  module Types
    class DocumentSectionTermsAndConditions < Internal::Types::Model
      field :tc_links, -> { Internal::Types::Array[PayabliSdk::Types::DocumentSectionTermsAndConditionsTcLinksItem] }, optional: true, nullable: false, api_name: "tcLinks"
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
