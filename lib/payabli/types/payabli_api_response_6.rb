# frozen_string_literal: true

module Payabli
  module Types
    # Response schema for line item operations.
    class PayabliApiResponse6 < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
      field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier"
      field :response_data, lambda {
        Payabli::Types::Responsedatanonobject
      }, optional: true, nullable: false, api_name: "responseData"
      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
    end
  end
end
