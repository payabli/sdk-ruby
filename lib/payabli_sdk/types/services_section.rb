# frozen_string_literal: true

module PayabliSdk
  module Types
    # Details about pricing and payment services for a business.
    class ServicesSection < Internal::Types::Model
      field :ach, -> { PayabliSdk::Types::AchService }, optional: true, nullable: false
      field :card, -> { PayabliSdk::Types::CardService }, optional: true, nullable: false
      field :sub_footer, -> { String }, optional: true, nullable: false, api_name: "subFooter"
      field :sub_header, -> { String }, optional: true, nullable: false, api_name: "subHeader"
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
