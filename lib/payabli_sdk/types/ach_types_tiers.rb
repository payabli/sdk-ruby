# frozen_string_literal: true

module PayabliSdk
  module Types
    class AchTypesTiers < Internal::Types::Model
      field :ccd, -> { PayabliSdk::Types::TierItem }, optional: true, nullable: false
      field :ppd, -> { PayabliSdk::Types::TierItem }, optional: true, nullable: false
      field :web, -> { PayabliSdk::Types::TierItem }, optional: true, nullable: false
    end
  end
end
