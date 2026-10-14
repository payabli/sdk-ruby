# frozen_string_literal: true

module Payabli
  module Types
    # A vendor contact.
    class PayoutSubscriptionVendorContact < Internal::Types::Model
      field :contact_name, -> { String }, optional: true, nullable: false, api_name: "contactName"

      field :contact_email, -> { String }, optional: true, nullable: false, api_name: "contactEmail"

      field :contact_title, -> { String }, optional: true, nullable: false, api_name: "contactTitle"

      field :contact_phone, -> { String }, optional: true, nullable: false, api_name: "contactPhone"
    end
  end
end
