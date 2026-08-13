# frozen_string_literal: true

module Payabli
  module Types
    # Counts of entities the profile is assigned to. Any non-zero count locks the
    # profile from deletion in the Payabli Portal.
    class EntitiesAssigned < Internal::Types::Model
      field :organizations, -> { Integer }, optional: false, nullable: false

      field :paypoints, -> { Integer }, optional: false, nullable: false

      field :templates, -> { Integer }, optional: false, nullable: false

      field :applications, -> { Integer }, optional: false, nullable: false
    end
  end
end
