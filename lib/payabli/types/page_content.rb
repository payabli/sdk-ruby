# frozen_string_literal: true

module Payabli
  module Types
    class PageContent < Internal::Types::Model
      field :amount, -> { Payabli::Types::AmountElement }, optional: true, nullable: false
      field :autopay, -> { Payabli::Types::AutoElement }, optional: true, nullable: false
      field :contact_us, -> { Payabli::Types::ContactElement }, optional: true, nullable: false, api_name: "contactUs"
      field :entry, -> { String }, optional: true, nullable: false
      field :invoices, -> { Payabli::Types::InvoiceElement }, optional: true, nullable: false
      field :logo, -> { Payabli::Types::Element }, optional: true, nullable: false
      field :message_before_paying, -> { Payabli::Types::LabelElement }, optional: true, nullable: false, api_name: "messageBeforePaying"
      field :name, -> { String }, optional: true, nullable: false
      field :notes, -> { Payabli::Types::NoteElement }, optional: true, nullable: false
      field :page, -> { Payabli::Types::PageElement }, optional: true, nullable: false
      field :payment_button, -> { Payabli::Types::LabelElement }, optional: true, nullable: false, api_name: "paymentButton"
      field :payment_methods, -> { Payabli::Types::MethodElement }, optional: true, nullable: false, api_name: "paymentMethods"
      field :payor, -> { Payabli::Types::PayorElement }, optional: true, nullable: false
      field :review, -> { Payabli::Types::HeaderElement }, optional: true, nullable: false
      field :subdomain, -> { String }, optional: true, nullable: false
    end
  end
end
