# frozen_string_literal: true

module Payabli
  module Types
    # Data extracted from a completed outreach call.
    class VendorCallStatusExtractedData < Internal::Types::Model
      field :selected_payment_method, -> { String }, optional: true, nullable: false, api_name: "selectedPaymentMethod"

      field :contact_email, -> { String }, optional: true, nullable: false, api_name: "contactEmail"
    end
  end
end
