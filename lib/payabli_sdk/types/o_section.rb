# frozen_string_literal: true

module PayabliSdk
  module Types
    class OSection < Internal::Types::Model
      field :contact_list, -> { PayabliSdk::Types::CList }, optional: true, nullable: false
      field :own_list, -> { PayabliSdk::Types::OList }, optional: true, nullable: false
    end
  end
end
