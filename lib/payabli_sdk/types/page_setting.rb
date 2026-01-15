# frozen_string_literal: true

module PayabliSdk
  module Types
    class PageSetting < Internal::Types::Model
      field :color, -> { String }, optional: true, nullable: false
      field :custom_css_url, -> { String }, optional: true, nullable: false, api_name: "customCssUrl"
      field :language, -> { String }, optional: true, nullable: false
      field :page_logo, -> { PayabliSdk::Types::FileContent }, optional: true, nullable: false, api_name: "pageLogo"
      field :payment_button, -> { PayabliSdk::Types::ButtonElement }, optional: true, nullable: false, api_name: "paymentButton"
      field :redirect_after_approve, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "redirectAfterApprove"
      field :redirect_after_approve_url, -> { String }, optional: true, nullable: false, api_name: "redirectAfterApproveUrl"
    end
  end
end
