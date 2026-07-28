# frozen_string_literal: true

module Payabli
  module Types
    # A reference to the organization that owns the case.
    class OrgRef < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
