# frozen_string_literal: true

module Payabli
  module Types
    # Optional request body for the v2 refund endpoints. Provide split instructions to refund a split-funded
    # transaction. Omit the body for a standard refund. Fields match the v1 refund-with-instructions request.
    class RefundV2Request < Internal::Types::Model
      field :amount, -> { Integer }, optional: true, nullable: false

      field :ipaddress, -> { String }, optional: true, nullable: false

      field :order_description, -> { String }, optional: true, nullable: false, api_name: "orderDescription"

      field :order_id, -> { String }, optional: true, nullable: false, api_name: "orderId"

      field :refund_details, -> { Payabli::Types::RefundDetail }, optional: true, nullable: false, api_name: "refundDetails"

      field :source, -> { String }, optional: true, nullable: false
    end
  end
end
