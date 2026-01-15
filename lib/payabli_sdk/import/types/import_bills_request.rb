# frozen_string_literal: true

module PayabliSdk
  module Import
    module Types
      class ImportBillsRequest < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false
      end
    end
  end
end
