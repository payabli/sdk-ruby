# frozen_string_literal: true

module PayabliSdk
  module Types
    # The response for canceling a single payout transaction.
    class PayabliApiResponse0000 < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
      field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier"
      field :response_code, -> { Integer }, optional: true, nullable: false, api_name: "responseCode"
      field :response_data, -> { PayabliSdk::Types::PayabliApiResponse0ResponseData }, optional: true, nullable: false, api_name: "responseData"
    end
  end
end
