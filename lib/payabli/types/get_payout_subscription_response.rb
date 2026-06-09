# frozen_string_literal: true

module Payabli
  module Types
    # Success response
    class GetPayoutSubscriptionResponse < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"

      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"

      field :response_data, -> { Payabli::Types::PayoutSubscriptionQueryRecord }, optional: true, nullable: false, api_name: "responseData"
    end
  end
end
