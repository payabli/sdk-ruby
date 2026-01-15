# frozen_string_literal: true

module PayabliSdk
  module PaymentLink
    module Types
      class PayLinkUpdateData < Internal::Types::Model
        field :pay_link_id, -> { String }, optional: false, nullable: false, api_name: "payLinkId"
        field :contact_us, -> { PayabliSdk::Types::ContactElement }, optional: true, nullable: false, api_name: "contactUs"
        field :logo, -> { PayabliSdk::Types::Element }, optional: true, nullable: false
        field :message_before_paying, -> { PayabliSdk::Types::LabelElement }, optional: true, nullable: false, api_name: "messageBeforePaying"
        field :notes, -> { PayabliSdk::Types::NoteElement }, optional: true, nullable: false
        field :page, -> { PayabliSdk::Types::PageElement }, optional: true, nullable: false
        field :payment_button, -> { PayabliSdk::Types::LabelElement }, optional: true, nullable: false, api_name: "paymentButton"
        field :payment_methods, -> { PayabliSdk::Types::MethodElement }, optional: true, nullable: false, api_name: "paymentMethods"
        field :review, -> { PayabliSdk::Types::HeaderElement }, optional: true, nullable: false
        field :settings, -> { PayabliSdk::Types::PagelinkSetting }, optional: true, nullable: false
      end
    end
  end
end
