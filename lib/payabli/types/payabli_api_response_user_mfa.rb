# frozen_string_literal: true

module Payabli
  module Types
    class PayabliApiResponseUserMfa < Internal::Types::Model
      field :inactive_token_time, -> { Integer }, optional: true, nullable: false, api_name: "inactiveTokenTime"
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
      field :remaining, -> { Integer }, optional: true, nullable: false
      field :response_data, lambda {
        Payabli::Types::Responsedatanonobject
      }, optional: true, nullable: false, api_name: "responseData"
      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
    end
  end
end
