# frozen_string_literal: true

module Payabli
  module Types
    class OrganizationUpdates < Internal::Types::Model
      field :cascade, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :is_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isEnabled"
    end
  end
end
