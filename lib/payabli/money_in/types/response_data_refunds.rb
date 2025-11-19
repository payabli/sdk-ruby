# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      class ResponseDataRefunds < Internal::Types::Model
        field :auth_code, -> { String }, optional: false, nullable: false, api_name: "authCode"
        field :expected_processing_date_time, lambda {
          String
        }, optional: false, nullable: true, api_name: "expectedProcessingDateTime"
        field :avs_response_text, -> { String }, optional: true, nullable: false, api_name: "avsResponseText"
        field :customer_id, -> { Integer }, optional: false, nullable: true, api_name: "customerId"
        field :cvv_response_text, -> { String }, optional: false, nullable: true, api_name: "cvvResponseText"
        field :method_reference_id, -> { String }, optional: false, nullable: true, api_name: "methodReferenceId"
        field :reference_id, -> { String }, optional: false, nullable: false, api_name: "referenceId"
        field :result_code, -> { Integer }, optional: false, nullable: false, api_name: "resultCode"
        field :result_text, -> { String }, optional: false, nullable: false, api_name: "resultText"
      end
    end
  end
end
