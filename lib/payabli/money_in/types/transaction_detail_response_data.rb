# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      # Response data from payment processor
      class TransactionDetailResponseData < Internal::Types::Model
        field :result_code, -> { String }, optional: true, nullable: false, api_name: "resultCode"
        field :result_code_text, -> { String }, optional: true, nullable: false, api_name: "resultCodeText"
        field :response, -> { String }, optional: false, nullable: true
        field :responsetext, -> { String }, optional: false, nullable: false
        field :authcode, -> { String }, optional: false, nullable: true
        field :transactionid, -> { String }, optional: false, nullable: false
        field :avsresponse, -> { String }, optional: false, nullable: true
        field :avsresponse_text, -> { String }, optional: false, nullable: true
        field :cvvresponse, -> { String }, optional: false, nullable: true
        field :cvvresponse_text, -> { String }, optional: false, nullable: true
        field :orderid, -> { String }, optional: false, nullable: true
        field :type, -> { String }, optional: false, nullable: true
        field :response_code, -> { String }, optional: false, nullable: false
        field :response_code_text, -> { String }, optional: false, nullable: false
        field :customer_vault_id, -> { String }, optional: false, nullable: true
        field :emv_auth_response_data, -> { String }, optional: false, nullable: true
      end
    end
  end
end
