# frozen_string_literal: true

module Payabli
  module PaymentLink
    module Types
      # Configuration for the Pay Out payment link page. Controls branding, messaging, vendor fields, and which payout
      # methods are offered to the vendor.
      class PaymentPageRequestBodyOut < Internal::Types::Model
        field :contact_us, -> { Payabli::Types::ContactElement }, optional: true, nullable: false, api_name: "contactUs"
        field :logo, -> { Payabli::Types::Element }, optional: true, nullable: false
        field :message_before_paying, -> { Payabli::Types::LabelElement }, optional: true, nullable: false, api_name: "messageBeforePaying"
        field :notes, -> { Payabli::Types::NoteElement }, optional: true, nullable: false
        field :page, -> { Payabli::Types::PageElement }, optional: true, nullable: false
        field :payment_button, -> { Payabli::Types::LabelElement }, optional: true, nullable: false, api_name: "paymentButton"
        field :payment_methods, -> { Payabli::MoneyOutTypes::Types::MethodElementOut }, optional: true, nullable: false, api_name: "paymentMethods"
        field :review, -> { Payabli::Types::HeaderElement }, optional: true, nullable: false
        field :bills, -> { Payabli::Types::Element }, optional: true, nullable: false
        field :settings, -> { Payabli::Types::PagelinkSetting }, optional: true, nullable: false
      end
    end
  end
end
