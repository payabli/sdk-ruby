# frozen_string_literal: true

module PayabliSdk
  module Subscription
    module Types
      # Success response
      class AddSubscriptionResponse < Internal::Types::Model
        field :customer_id, -> { Integer }, optional: true, nullable: false, api_name: "customerId"
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
        field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
        field :response_data, -> { Integer }, optional: false, nullable: false, api_name: "responseData"
      end
    end
  end
end
