# frozen_string_literal: true

module Payabli
  module Types
    # Details about the payment.
    class PaymentDetail < Internal::Types::Model
      field :categories, lambda {
        Internal::Types::Array[Payabli::Types::PaymentCategories]
      }, optional: true, nullable: false
      field :check_image, lambda {
        Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]
      }, optional: true, nullable: false, api_name: "checkImage"
      field :check_number, -> { String }, optional: true, nullable: false, api_name: "checkNumber"
      field :currency, -> { String }, optional: true, nullable: false
      field :service_fee, -> { Integer }, optional: true, nullable: false, api_name: "serviceFee"
      field :split_funding, lambda {
        Internal::Types::Array[Payabli::Types::SplitFundingContent]
      }, optional: true, nullable: false, api_name: "splitFunding"
      field :total_amount, -> { Integer }, optional: false, nullable: false, api_name: "totalAmount"
    end
  end
end
