# frozen_string_literal: true

module Payabli
  module Wallet
    module Types
      class ConfigureOrganizationRequestApplePay < Internal::Types::Model
        field :cascade, -> { Internal::Types::Boolean }, optional: true, nullable: false
        field :is_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isEnabled"
        field :org_id, -> { Integer }, optional: true, nullable: false, api_name: "orgId"
      end
    end
  end
end
