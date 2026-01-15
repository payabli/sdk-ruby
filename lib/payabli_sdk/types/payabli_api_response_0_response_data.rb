# frozen_string_literal: true

module PayabliSdk
  module Types
    class PayabliApiResponse0ResponseData < Internal::Types::Model
      field :auth_code, -> { String }, optional: true, nullable: false, api_name: "AuthCode"
      field :avs_response_text, -> { String }, optional: true, nullable: false, api_name: "avsResponseText"
      field :customer_id, -> { Integer }, optional: true, nullable: false, api_name: "CustomerId"
      field :cvv_response_text, -> { String }, optional: true, nullable: false, api_name: "cvvResponseText"
      field :method_reference_id, -> { String }, optional: true, nullable: false, api_name: "methodReferenceId"
      field :reference_id, -> { String }, optional: true, nullable: false, api_name: "ReferenceId"
      field :result_code, -> { Integer }, optional: true, nullable: false, api_name: "ResultCode"
      field :result_text, -> { String }, optional: true, nullable: false, api_name: "ResultText"
    end
  end
end
