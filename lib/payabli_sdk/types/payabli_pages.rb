# frozen_string_literal: true

module PayabliSdk
  module Types
    class PayabliPages < Internal::Types::Model
      field :additional_data, -> { Internal::Types::Hash[String, Internal::Types::Hash[String, Object]] }, optional: true, nullable: false, api_name: "AdditionalData"
      field :credentials, -> { Internal::Types::Array[PayabliSdk::Types::PayabliCredentials] }, optional: true, nullable: false
      field :last_access, -> { String }, optional: true, nullable: false, api_name: "lastAccess"
      field :page_content, -> { PayabliSdk::Types::PageContent }, optional: true, nullable: false, api_name: "pageContent"
      field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier"
      field :page_settings, -> { PayabliSdk::Types::PageSetting }, optional: true, nullable: false, api_name: "pageSettings"
      field :published, -> { Integer }, optional: true, nullable: false
      field :receipt_content, -> { PayabliSdk::Types::ReceiptContent }, optional: true, nullable: false, api_name: "receiptContent"
      field :subdomain, -> { String }, optional: true, nullable: false
      field :total_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalAmount"
      field :validation_code, -> { String }, optional: true, nullable: false, api_name: "validationCode"
    end
  end
end
