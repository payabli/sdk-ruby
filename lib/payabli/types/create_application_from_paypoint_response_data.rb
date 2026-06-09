# frozen_string_literal: true

module Payabli
  module Types
    class CreateApplicationFromPaypointResponseData < Internal::Types::Model
      field :app_id, -> { Integer }, optional: true, nullable: false, api_name: "appId"

      field :boarding_link, -> { String }, optional: true, nullable: false, api_name: "boardingLink"
    end
  end
end
