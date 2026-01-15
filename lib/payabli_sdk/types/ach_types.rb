# frozen_string_literal: true

module PayabliSdk
  module Types
    class AchTypes < Internal::Types::Model
      field :ccd, -> { PayabliSdk::Types::BasicTemplateElement }, optional: true, nullable: false
      field :ppd, -> { PayabliSdk::Types::BasicTemplateElement }, optional: true, nullable: false
      field :web, -> { PayabliSdk::Types::BasicTemplateElement }, optional: true, nullable: false
    end
  end
end
