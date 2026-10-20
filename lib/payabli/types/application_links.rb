# frozen_string_literal: true

module Payabli
  module Types
    # Hypermedia links for an application resource.
    class ApplicationLinks < Internal::Types::Model
      field :self_, -> { String }, optional: true, nullable: false, api_name: "self"

      field :business, -> { String }, optional: true, nullable: false
    end
  end
end
