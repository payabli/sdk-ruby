# frozen_string_literal: true

module Payabli
  module TokenStorage
    module Types
      class AddMethodResponseResponseData < Internal::Types::Model
        field :reference_id, -> { String }, optional: true, nullable: false, api_name: "referenceId"
        field :result_code, -> { Integer }, optional: true, nullable: false, api_name: "resultCode"
        field :result_text, -> { String }, optional: true, nullable: false, api_name: "resultText"
        field :customer_id, -> { Integer }, optional: true, nullable: false, api_name: "customerId"
        field :method_reference_id, -> { String }, optional: true, nullable: false, api_name: "methodReferenceId"
      end
    end
  end
end
