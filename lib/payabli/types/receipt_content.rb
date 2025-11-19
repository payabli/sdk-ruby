# frozen_string_literal: true

module Payabli
  module Types
    # Object containing receipt body configuration
    class ReceiptContent < Internal::Types::Model
      field :amount, -> { Payabli::Types::Element }, optional: true, nullable: false
      field :contact_us, -> { Payabli::Types::Element }, optional: true, nullable: false, api_name: "contactUs"
      field :details, -> { Payabli::Types::Element }, optional: true, nullable: false
      field :logo, -> { Payabli::Types::Element }, optional: true, nullable: false
      field :message_before_button, lambda {
        Payabli::Types::LabelElement
      }, optional: true, nullable: false, api_name: "messageBeforeButton"
      field :page, -> { Payabli::Types::PageElement }, optional: true, nullable: false
      field :payment_button, lambda {
        Payabli::Types::LabelElement
      }, optional: true, nullable: false, api_name: "paymentButton"
      field :payment_information, lambda {
        Payabli::Types::Element
      }, optional: true, nullable: false, api_name: "paymentInformation"
      field :settings, -> { Payabli::Types::SettingElement }, optional: true, nullable: false
    end
  end
end
