# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      # Response data for void transactions
      class VoidResponseData < Internal::Types::Model
        field :auth_code, -> { String }, optional: false, nullable: false, api_name: "authCode"
        field :reference_id, -> { String }, optional: false, nullable: false, api_name: "referenceId"
        field :result_code, -> { Integer }, optional: false, nullable: false, api_name: "resultCode"
        field :result_text, -> { String }, optional: false, nullable: false, api_name: "resultText"
        field :avs_response_text, -> { String }, optional: true, nullable: false, api_name: "avsResponseText"
        field :cvv_response_text, -> { String }, optional: true, nullable: false, api_name: "cvvResponseText"
        field :customer_id, -> { Integer }, optional: true, nullable: false, api_name: "customerId"
        field :method_reference_id, -> { String }, optional: true, nullable: false, api_name: "methodReferenceId"
      end
    end
  end
end
