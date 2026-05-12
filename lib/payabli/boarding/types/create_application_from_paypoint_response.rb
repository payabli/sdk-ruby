# frozen_string_literal: true

module Payabli
  module Boarding
    module Types
      # Response returned when creating a boarding application linked to an existing paypoint.
      class CreateApplicationFromPaypointResponse < Internal::Types::Model
        field :response_code, -> { Integer }, optional: true, nullable: false, api_name: "responseCode"

        field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier"

        field :room_id, -> { Integer }, optional: true, nullable: false, api_name: "roomId"

        field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"

        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"

        field :response_data, -> { Payabli::Boarding::Types::CreateApplicationFromPaypointResponseData }, optional: true, nullable: false, api_name: "responseData"
      end
    end
  end
end
