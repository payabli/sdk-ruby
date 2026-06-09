# frozen_string_literal: true

module Payabli
  module Types
    # The vendor associated with the bill. Although you can create a vendor
    # in a create bill request, Payabli recommends creating a vendor
    # separately and passing a valid `vendorNumber` here. At minimum, the
    # `vendorNumber` is required.
    class BillOutDataVendor < Internal::Types::Model
      field :vendor_number, -> { String }, optional: true, nullable: false, api_name: "vendorNumber"
    end
  end
end
