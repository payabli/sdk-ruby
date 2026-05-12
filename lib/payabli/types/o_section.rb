# frozen_string_literal: true

module Payabli
  module Types
    class OSection < Internal::Types::Model
      field :contact_list, -> { Payabli::Types::CList }, optional: true, nullable: false
      field :own_list, -> { Payabli::Types::OList }, optional: true, nullable: false
    end
  end
end
