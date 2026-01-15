# frozen_string_literal: true

module PayabliSdk
  module Bill
    module Types
      # A successful response returns a bill object with all its details. If the bill isn't found, the response will
      # contain an error message.
      class GetBillResponse < Internal::Types::Model
        field :response_code, -> { Integer }, optional: true, nullable: false, api_name: "responseCode"
        field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier"
        field :room_id, -> { Integer }, optional: true, nullable: false, api_name: "roomId"
        field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
        field :response_data, -> { PayabliSdk::Bill::Types::BillResponseData }, optional: true, nullable: false, api_name: "responseData"
      end
    end
  end
end
