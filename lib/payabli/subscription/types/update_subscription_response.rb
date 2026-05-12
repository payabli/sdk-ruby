# frozen_string_literal: true

module Payabli
  module Subscription
    module Types
      # Success response
      class UpdateSubscriptionResponse < Internal::Types::Model
        field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
        field :response_data, -> { String }, optional: true, nullable: false, api_name: "responseData"
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
        field :customer_id, -> { Integer }, optional: true, nullable: false, api_name: "customerId"
      end
    end
  end
end
