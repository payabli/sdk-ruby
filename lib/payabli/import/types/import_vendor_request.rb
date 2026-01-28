# frozen_string_literal: true

module Payabli
  module Import
    module Types
      class ImportVendorRequest < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false
      end
    end
  end
end
