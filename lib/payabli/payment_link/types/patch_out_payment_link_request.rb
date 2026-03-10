# frozen_string_literal: true

module Payabli
  module PaymentLink
    module Types
      # Request body for partially updating a Pay Out payment link.
      class PatchOutPaymentLinkRequest < Internal::Types::Model
        field :bill_page_data, -> { Payabli::PaymentLink::Types::PaymentPageRequestBodyOut }, optional: true, nullable: false, api_name: "billPageData"
        field :expiration_date, -> { String }, optional: true, nullable: false, api_name: "expirationDate"
        field :status, -> { Payabli::MoneyOutTypes::Types::PaymentLinkStatus }, optional: true, nullable: false
      end
    end
  end
end
