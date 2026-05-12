# frozen_string_literal: true

module Payabli
  module Types
    class AchLinkTypes < Internal::Types::Model
      field :ccd, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :ppd, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :web, -> { Payabli::Types::LinkData }, optional: true, nullable: false
    end
  end
end
