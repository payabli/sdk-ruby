# frozen_string_literal: true

module Payabli
  module Boarding
    module Types
      # Request to create a boarding application linked to an existing paypoint. Used for adding new services to a
      # paypoint without creating a duplicate record.
      class CreateApplicationFromPaypointRequest < Internal::Types::Model
        field :paypoint_id, -> { Integer }, optional: false, nullable: false, api_name: "paypointId"
        field :template_id, -> { Integer }, optional: false, nullable: false, api_name: "templateId"
        field :recipient_email, -> { String }, optional: false, nullable: false, api_name: "recipientEmail"
        field :return_boarding_access_info_in_line, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "returnBoardingAccessInfoInLine"
        field :on_create, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "onCreate"
      end
    end
  end
end
