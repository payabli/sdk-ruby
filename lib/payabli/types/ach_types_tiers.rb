# frozen_string_literal: true

module Payabli
  module Types
    class AchTypesTiers < Internal::Types::Model
      field :ccd, -> { Payabli::Types::TierItem }, optional: true, nullable: false
      field :ppd, -> { Payabli::Types::TierItem }, optional: true, nullable: false
      field :web, -> { Payabli::Types::TierItem }, optional: true, nullable: false
    end
  end
end
