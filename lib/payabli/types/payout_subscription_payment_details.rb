# frozen_string_literal: true

module Payabli
  module Types
    # Payment details for the payout subscription.
    class PayoutSubscriptionPaymentDetails < Internal::Types::Model
      field :total_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalAmount"

      field :service_fee, -> { Integer }, optional: true, nullable: false, api_name: "serviceFee"

      field :surcharge_fee, -> { Integer }, optional: true, nullable: false, api_name: "surchargeFee"

      field :check_number, -> { String }, optional: true, nullable: false, api_name: "checkNumber"

      field :check_image, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "checkImage"

      field :check_unique_id, -> { String }, optional: true, nullable: false, api_name: "checkUniqueId"

      field :currency, -> { String }, optional: true, nullable: false

      field :order_description, -> { String }, optional: true, nullable: false, api_name: "orderDescription"

      field :order_id, -> { String }, optional: true, nullable: false, api_name: "orderId"

      field :order_id_alternative, -> { String }, optional: true, nullable: false, api_name: "orderIdAlternative"

      field :payment_description, -> { String }, optional: true, nullable: false, api_name: "paymentDescription"

      field :settlement_descriptor, -> { String }, optional: true, nullable: false, api_name: "settlementDescriptor"

      field :group_number, -> { String }, optional: true, nullable: false, api_name: "groupNumber"

      field :source, -> { String }, optional: true, nullable: false

      field :payabli_trans_id, -> { String }, optional: true, nullable: false, api_name: "payabliTransId"

      field :unbundled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :categories, -> { Internal::Types::Array[Payabli::Types::PaymentCategories] }, optional: true, nullable: false

      field :split_funding, -> { Internal::Types::Array[Payabli::Types::SplitFundingContent] }, optional: true, nullable: false, api_name: "splitFunding"
    end
  end
end
