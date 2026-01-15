# frozen_string_literal: true

module PayabliSdk
  module Types
    class BSection < Internal::Types::Model
      field :address, -> { PayabliSdk::Types::BAddress }, optional: true, nullable: false
      field :details, -> { PayabliSdk::Types::BDetails }, optional: true, nullable: false
    end
  end
end
