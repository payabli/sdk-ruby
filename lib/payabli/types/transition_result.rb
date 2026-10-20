# frozen_string_literal: true

module Payabli
  module Types
    # The result of a lifecycle action, with the application's new status.
    class TransitionResult < Internal::Types::Model
      field :requests_reference, -> { String }, optional: false, nullable: false, api_name: "requestsReference"

      field :application_status, -> { String }, optional: false, nullable: false, api_name: "applicationStatus"

      field :allowed_actions, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "allowedActions"
    end
  end
end
