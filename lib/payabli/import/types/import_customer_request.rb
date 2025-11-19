# frozen_string_literal: true

module Payabli
  module Import
    module Types
      class ImportCustomerRequest < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false
        field :replace_existing, -> { Integer }, optional: true, nullable: false, api_name: "replaceExisting"
      end
    end
  end
end
