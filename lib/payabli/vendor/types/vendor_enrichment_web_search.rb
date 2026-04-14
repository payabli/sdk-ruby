# frozen_string_literal: true

module Payabli
  module Vendor
    module Types
      # Vendor contact information and payment acceptance info found through web search.
      class VendorEnrichmentWebSearch < Internal::Types::Model
        field :phone, -> { String }, optional: true, nullable: false
        field :phone_type, -> { String }, optional: true, nullable: false, api_name: "phoneType"
        field :email, -> { String }, optional: true, nullable: false
        field :email_type, -> { String }, optional: true, nullable: false, api_name: "emailType"
        field :street, -> { String }, optional: true, nullable: false
        field :city, -> { String }, optional: true, nullable: false
        field :state, -> { String }, optional: true, nullable: false
        field :zip_code, -> { String }, optional: true, nullable: false, api_name: "zipCode"
        field :country, -> { String }, optional: true, nullable: false
        field :address_type, -> { String }, optional: true, nullable: false, api_name: "addressType"
        field :payment_link, -> { String }, optional: true, nullable: false, api_name: "paymentLink"
        field :payment_link_type, -> { String }, optional: true, nullable: false, api_name: "paymentLinkType"
        field :card_accepted, -> { String }, optional: true, nullable: false, api_name: "cardAccepted"
        field :ach_accepted, -> { String }, optional: true, nullable: false, api_name: "achAccepted"
        field :check_accepted, -> { String }, optional: true, nullable: false, api_name: "checkAccepted"
      end
    end
  end
end
