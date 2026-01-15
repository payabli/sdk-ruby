# frozen_string_literal: true

module PayabliSdk
  module Types
    class PageContent < Internal::Types::Model
      field :amount, -> { PayabliSdk::Types::AmountElement }, optional: true, nullable: false
      field :autopay, -> { PayabliSdk::Types::AutoElement }, optional: true, nullable: false
      field :contact_us, -> { PayabliSdk::Types::ContactElement }, optional: true, nullable: false, api_name: "contactUs"
      field :entry, -> { String }, optional: true, nullable: false
      field :invoices, -> { PayabliSdk::Types::InvoiceElement }, optional: true, nullable: false
      field :logo, -> { PayabliSdk::Types::Element }, optional: true, nullable: false
      field :message_before_paying, -> { PayabliSdk::Types::LabelElement }, optional: true, nullable: false, api_name: "messageBeforePaying"
      field :name, -> { String }, optional: true, nullable: false
      field :notes, -> { PayabliSdk::Types::NoteElement }, optional: true, nullable: false
      field :page, -> { PayabliSdk::Types::PageElement }, optional: true, nullable: false
      field :payment_button, -> { PayabliSdk::Types::LabelElement }, optional: true, nullable: false, api_name: "paymentButton"
      field :payment_methods, -> { PayabliSdk::Types::MethodElement }, optional: true, nullable: false, api_name: "paymentMethods"
      field :payor, -> { PayabliSdk::Types::PayorElement }, optional: true, nullable: false
      field :review, -> { PayabliSdk::Types::HeaderElement }, optional: true, nullable: false
      field :subdomain, -> { String }, optional: true, nullable: false
    end
  end
end
