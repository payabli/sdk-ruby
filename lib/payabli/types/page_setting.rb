# frozen_string_literal: true

module Payabli
  module Types
    class PageSetting < Internal::Types::Model
      field :color, -> { String }, optional: true, nullable: false
      field :custom_css_url, -> { String }, optional: true, nullable: false, api_name: "customCssUrl"
      field :language, -> { String }, optional: true, nullable: false
      field :page_logo, -> { Payabli::Types::FileContent }, optional: true, nullable: false, api_name: "pageLogo"
      field :payment_button, lambda {
        Payabli::Types::ButtonElement
      }, optional: true, nullable: false, api_name: "paymentButton"
      field :redirect_after_approve, lambda {
        Internal::Types::Boolean
      }, optional: true, nullable: false, api_name: "redirectAfterApprove"
      field :redirect_after_approve_url, lambda {
        String
      }, optional: true, nullable: false, api_name: "redirectAfterApproveUrl"
    end
  end
end
