# frozen_string_literal: true

module Payabli
  module Types
    # The vendor's vendor portal access.
    class VendorPortalAccess < Internal::Types::Model
      field :anyone_has_access, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "AnyoneHasAccess"

      field :users, -> { Internal::Types::Array[Payabli::Types::VendorPortalAccessUsersItem] }, optional: true, nullable: false, api_name: "Users"
    end
  end
end
