# frozen_string_literal: true

module Payabli
  module Types
    # The transaction's response data.
    class QueryResponseData < Internal::Types::Model
      field :authcode, -> { String }, optional: true, nullable: false
      field :avsresponse, -> { String }, optional: true, nullable: false
      field :avsresponse_text, -> { String }, optional: true, nullable: false
      field :cvvresponse, -> { String }, optional: true, nullable: false
      field :cvvresponse_text, -> { String }, optional: true, nullable: false
      field :emv_auth_response_data, -> { String }, optional: true, nullable: false
      field :orderid, -> { String }, optional: true, nullable: false
      field :response, -> { String }, optional: true, nullable: false
      field :response_code, -> { String }, optional: true, nullable: false
      field :response_code_text, -> { String }, optional: true, nullable: false
      field :responsetext, -> { String }, optional: true, nullable: false
      field :transactionid, -> { String }, optional: true, nullable: false
      field :type, -> { String }, optional: true, nullable: false
    end
  end
end
