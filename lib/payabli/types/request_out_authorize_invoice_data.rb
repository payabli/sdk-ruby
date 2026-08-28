# frozen_string_literal: true

module Payabli
  module Types
    # Bill to pay with this payout. Create the bill first with
    # [Add bill](/developers/api-reference/bill/add-bill), then reference it here
    # by `billId`.
    class RequestOutAuthorizeInvoiceData < Internal::Types::Model
      field :bill_id, -> { Integer }, optional: false, nullable: false, api_name: "billId"
    end
  end
end
