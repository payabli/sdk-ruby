# frozen_string_literal: true

module PayabliSdk
  module Types
    # Object containing receipt body configuration
    class ReceiptContent < Internal::Types::Model
      field :amount, -> { PayabliSdk::Types::Element }, optional: true, nullable: false
      field :contact_us, -> { PayabliSdk::Types::Element }, optional: true, nullable: false, api_name: "contactUs"
      field :details, -> { PayabliSdk::Types::Element }, optional: true, nullable: false
      field :logo, -> { PayabliSdk::Types::Element }, optional: true, nullable: false
      field :message_before_button, -> { PayabliSdk::Types::LabelElement }, optional: true, nullable: false, api_name: "messageBeforeButton"
      field :page, -> { PayabliSdk::Types::PageElement }, optional: true, nullable: false
      field :payment_button, -> { PayabliSdk::Types::LabelElement }, optional: true, nullable: false, api_name: "paymentButton"
      field :payment_information, -> { PayabliSdk::Types::Element }, optional: true, nullable: false, api_name: "paymentInformation"
      field :settings, -> { PayabliSdk::Types::SettingElement }, optional: true, nullable: false
    end
  end
end
