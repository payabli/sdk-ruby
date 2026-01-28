# frozen_string_literal: true

module Payabli
  module Notificationlogs
    module Types
      class NotificationLogSearchRequest < Internal::Types::Model
        field :start_date, -> { String }, optional: false, nullable: false, api_name: "startDate"
        field :end_date, -> { String }, optional: false, nullable: false, api_name: "endDate"
        field :notification_event, -> { String }, optional: true, nullable: false, api_name: "notificationEvent"
        field :succeeded, -> { Internal::Types::Boolean }, optional: true, nullable: false
        field :org_id, -> { Integer }, optional: true, nullable: false, api_name: "orgId"
        field :paypoint_id, -> { Integer }, optional: true, nullable: false, api_name: "paypointId"
      end
    end
  end
end
