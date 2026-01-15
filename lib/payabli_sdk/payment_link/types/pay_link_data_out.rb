# frozen_string_literal: true

module PayabliSdk
  module PaymentLink
    module Types
      class PayLinkDataOut < Internal::Types::Model
        field :lot_number, -> { String }, optional: false, nullable: false, api_name: "lotNumber"
        field :entry_point, -> { String }, optional: false, nullable: false, api_name: "entryPoint"
        field :vendor_number, -> { String }, optional: false, nullable: false, api_name: "vendorNumber"
        field :mail_2, -> { String }, optional: true, nullable: false, api_name: "mail2"
        field :amount_fixed, -> { String }, optional: true, nullable: false, api_name: "amountFixed"
        field :body, -> { PayabliSdk::PaymentLink::Types::PaymentPageRequestBody }, optional: false, nullable: false
      end
    end
  end
end
