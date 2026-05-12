# frozen_string_literal: true

module Payabli
  module Types
    # Object containing details about the refund, including line items and optional split instructions.
    class RefundDetail < Internal::Types::Model
      field :categories, -> { Internal::Types::Array[Payabli::Types::PaymentCategories] }, optional: true, nullable: false
      field :split_refunding, -> { Internal::Types::Array[Payabli::Types::SplitFundingRefundContent] }, optional: true, nullable: false, api_name: "splitRefunding"
    end
  end
end
