# frozen_string_literal: true

module Payabli
  module PaymentLink
    module Types
      class PayLinkUpdateData < Internal::Types::Model
        field :pay_link_id, -> { String }, optional: false, nullable: false, api_name: "payLinkId"
        field :contact_us, -> { Payabli::Types::ContactElement }, optional: true, nullable: false, api_name: "contactUs"
        field :logo, -> { Payabli::Types::Element }, optional: true, nullable: false
        field :message_before_paying, lambda {
          Payabli::Types::LabelElement
        }, optional: true, nullable: false, api_name: "messageBeforePaying"
        field :notes, -> { Payabli::Types::NoteElement }, optional: true, nullable: false
        field :page, -> { Payabli::Types::PageElement }, optional: true, nullable: false
        field :payment_button, lambda {
          Payabli::Types::LabelElement
        }, optional: true, nullable: false, api_name: "paymentButton"
        field :payment_methods, lambda {
          Payabli::Types::MethodElement
        }, optional: true, nullable: false, api_name: "paymentMethods"
        field :review, -> { Payabli::Types::HeaderElement }, optional: true, nullable: false
        field :settings, -> { Payabli::Types::PagelinkSetting }, optional: true, nullable: false
      end
    end
  end
end
