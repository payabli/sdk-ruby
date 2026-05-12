# frozen_string_literal: true

module Payabli
  module Types
    class AchTypes < Internal::Types::Model
      field :ccd, -> { Payabli::Types::BasicTemplateElement }, optional: true, nullable: false
      field :ppd, -> { Payabli::Types::BasicTemplateElement }, optional: true, nullable: false
      field :web, -> { Payabli::Types::BasicTemplateElement }, optional: true, nullable: false
    end
  end
end
