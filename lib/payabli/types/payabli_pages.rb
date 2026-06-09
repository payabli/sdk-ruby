# frozen_string_literal: true

module Payabli
  module Types
    class PayabliPages < Internal::Types::Model
      field :additional_data, -> { Internal::Types::Hash[String, Internal::Types::Hash[String, Object]] }, optional: true, nullable: false, api_name: "AdditionalData"

      field :credentials, -> { Internal::Types::Array[Payabli::Types::PayabliCredentials] }, optional: true, nullable: false, api_name: "Credentials"

      field :last_access, -> { String }, optional: true, nullable: false, api_name: "LastAccess"

      field :page_content, -> { Payabli::Types::PageContent }, optional: true, nullable: false, api_name: "PageContent"

      field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier"

      field :page_settings, -> { Payabli::Types::PageSetting }, optional: true, nullable: false, api_name: "PageSettings"

      field :published, -> { Integer }, optional: true, nullable: false

      field :receipt_content, -> { Payabli::Types::ReceiptContent }, optional: true, nullable: false, api_name: "ReceiptContent"

      field :subdomain, -> { String }, optional: true, nullable: false, api_name: "Subdomain"

      field :total_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalAmount"

      field :validation_code, -> { String }, optional: true, nullable: false, api_name: "validationCode"
    end
  end
end
