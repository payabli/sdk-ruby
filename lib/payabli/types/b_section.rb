# frozen_string_literal: true

module Payabli
  module Types
    class BSection < Internal::Types::Model
      field :address, -> { Payabli::Types::BAddress }, optional: true, nullable: false
      field :details, -> { Payabli::Types::BDetails }, optional: true, nullable: false
    end
  end
end
