# frozen_string_literal: true

module Payabli
  module MoneyOutTypes
    module Types
      class CaptureAllOutResponseResponseDataItem < Internal::Types::Model
        field :customer_id, -> { Integer }, optional: true, nullable: false, api_name: "CustomerId"
        field :reference_id, -> { String }, optional: true, nullable: false, api_name: "ReferenceId"
        field :result_code, -> { Integer }, optional: true, nullable: false, api_name: "ResultCode"
        field :result_text, -> { String }, optional: true, nullable: false, api_name: "ResultText"
      end
    end
  end
end
