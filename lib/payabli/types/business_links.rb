# frozen_string_literal: true

module Payabli
  module Types
    # Hypermedia links for a business resource.
    class BusinessLinks < Internal::Types::Model
      field :self_, -> { String }, optional: true, nullable: false, api_name: "self"
    end
  end
end
