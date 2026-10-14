# frozen_string_literal: true

module Payabli
  module Types
    # The vendor's vendor portal access. Always `null` on this endpoint.
    class PayoutSubscriptionVendorVendorPortal < Internal::Types::Model
      field :anyone_has_access, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "anyoneHasAccess"

      field :users, -> { Internal::Types::Array[Payabli::Types::PayoutSubscriptionVendorVendorPortalUsersItem] }, optional: true, nullable: false
    end
  end
end
