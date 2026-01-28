# frozen_string_literal: true

module Payabli
  module Organization
    module Types
      class AddOrganizationResponse < Internal::Types::Model
        field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
        field :response_data, -> { Payabli::Types::Responsedatanonobject }, optional: true, nullable: false, api_name: "responseData"
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
      end
    end
  end
end
