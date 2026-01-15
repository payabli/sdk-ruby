# frozen_string_literal: true

module PayabliSdk
  module Types
    class AchLinkTypes < Internal::Types::Model
      field :ccd, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :ppd, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :web, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
    end
  end
end
