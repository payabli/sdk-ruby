# frozen_string_literal: true

module Payabli
  module Types
    # Vendor to pay with this payout. Create the vendor first with
    # [Create vendor](/developers/api-reference/vendor/create-vendor), then
    # reference it here by `vendorNumber` or `vendorId`.
    class RequestOutAuthorizeVendorData < Internal::Types::Model
      field :vendor_number, -> { String }, optional: true, nullable: false, api_name: "vendorNumber"

      field :vendor_id, -> { Integer }, optional: true, nullable: false, api_name: "vendorId"
    end
  end
end
