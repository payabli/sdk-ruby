# frozen_string_literal: true

module Payabli
  module TokenStorage
    module Types
      # Object describing the vendor owner of payment method. Required when saving an ACH payment method on behalf of a
      # vendor (for Pay Out transactions).
      class VendorDataRequest < Internal::Types::Model
        field :vendor_id, -> { Integer }, optional: true, nullable: false, api_name: "vendorId"
        field :vendor_number, -> { String }, optional: true, nullable: false, api_name: "vendorNumber"
      end
    end
  end
end
