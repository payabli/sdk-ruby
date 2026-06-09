# frozen_string_literal: true

module Payabli
  module PaymentLink
    module Types
      class PatchOutPaymentLinkRequest < Internal::Types::Model
        field :paylink_id, -> { String }, optional: false, nullable: false, api_name: "paylinkId"

        field :bill_page_data, -> { Payabli::Types::PaymentPageRequestBodyOut }, optional: true, nullable: false, api_name: "billPageData"

        field :expiration_date, -> { String }, optional: true, nullable: false, api_name: "expirationDate"

        field :status, -> { Payabli::Types::PaymentLinkStatus }, optional: true, nullable: false
      end
    end
  end
end
