# frozen_string_literal: true

module Payabli
  module Types
    # Latest AI outreach call activity for a vendor. The populated block depends on the `state` discriminator.
    class VendorCallStatusResponse < Internal::Types::Model
      field :vendor_id, -> { Integer }, optional: true, nullable: false, api_name: "vendorId"

      field :state, -> { String }, optional: true, nullable: false

      field :scheduled, -> { Payabli::Types::VendorCallStatusScheduled }, optional: true, nullable: false

      field :completed, -> { Payabli::Types::VendorCallStatusCompleted }, optional: true, nullable: false

      field :failed, -> { Payabli::Types::VendorCallStatusFailed }, optional: true, nullable: false
    end
  end
end
