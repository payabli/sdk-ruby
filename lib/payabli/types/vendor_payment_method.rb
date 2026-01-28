# frozen_string_literal: true

module Payabli
  module Types
    # Payment method object to use for the payout.
    # - `{ method: "managed" }` - Managed payment method
    # - `{ method: "vcard" }` - Virtual card payment method
    # - `{ method: "check" }` - Check payment method
    # - `{ method: "ach", storedMethodId?: "..." }` - ACH payment method with optional stored method ID
    class VendorPaymentMethod < Internal::Types::Model
      field :method_, -> { String }, optional: false, nullable: false, api_name: "method"
      field :stored_method_id, -> { String }, optional: true, nullable: false, api_name: "storedMethodId"
    end
  end
end
