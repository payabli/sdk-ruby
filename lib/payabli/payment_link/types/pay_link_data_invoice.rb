# frozen_string_literal: true

module Payabli
  module PaymentLink
    module Types
      class PayLinkDataInvoice < Internal::Types::Model
        field :id_invoice, -> { Integer }, optional: false, nullable: false, api_name: "idInvoice"

        field :amount_fixed, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "amountFixed"

        field :mail_2, -> { String }, optional: true, nullable: false, api_name: "mail2"

        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"

        field :contact_us, -> { Payabli::Types::ContactElement }, optional: true, nullable: false, api_name: "contactUs"

        field :invoices, -> { Payabli::Types::InvoiceElement }, optional: true, nullable: false

        field :logo, -> { Payabli::Types::Element }, optional: true, nullable: false

        field :message_before_paying, -> { Payabli::Types::LabelElement }, optional: true, nullable: false, api_name: "messageBeforePaying"

        field :notes, -> { Payabli::Types::NoteElement }, optional: true, nullable: false

        field :page, -> { Payabli::Types::PageElement }, optional: true, nullable: false

        field :payment_button, -> { Payabli::Types::LabelElement }, optional: true, nullable: false, api_name: "paymentButton"

        field :payment_methods, -> { Payabli::Types::MethodElement }, optional: true, nullable: false, api_name: "paymentMethods"

        field :payor, -> { Payabli::Types::PayorElement }, optional: true, nullable: false

        field :review, -> { Payabli::Types::HeaderElement }, optional: true, nullable: false

        field :settings, -> { Payabli::Types::PagelinkSetting }, optional: true, nullable: false
      end
    end
  end
end
