# frozen_string_literal: true

module Payabli
  module Types
    class QueryCFeeTransaction < Internal::Types::Model
      field :c_fee_transid, -> { String }, optional: true, nullable: false, api_name: "cFeeTransid"
      field :fee_amount, -> { Integer }, optional: true, nullable: false, api_name: "feeAmount"
      field :operation, -> { String }, optional: true, nullable: false
      field :refund_id, -> { Integer }, optional: true, nullable: false, api_name: "refundId"
      field :response_data, lambda {
        Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]
      }, optional: true, nullable: false, api_name: "responseData"
      field :settlement_status, -> { Integer }, optional: true, nullable: false, api_name: "settlementStatus"
      field :transaction_time, -> { String }, optional: true, nullable: false, api_name: "transactionTime"
      field :trans_status, -> { Integer }, optional: true, nullable: false, api_name: "transStatus"
    end
  end
end
