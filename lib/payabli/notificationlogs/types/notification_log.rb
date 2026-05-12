# frozen_string_literal: true

module Payabli
  module Notificationlogs
    module Types
      class NotificationLog < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :org_id, -> { Integer }, optional: false, nullable: true, api_name: "orgId"
        field :paypoint_id, -> { Integer }, optional: false, nullable: true, api_name: "paypointId"
        field :notification_event, -> { String }, optional: false, nullable: true, api_name: "notificationEvent"
        field :target, -> { String }, optional: false, nullable: true
        field :response_status, -> { String }, optional: false, nullable: true, api_name: "responseStatus"
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
        field :job_data, -> { String }, optional: false, nullable: true, api_name: "jobData"
        field :created_date, -> { String }, optional: false, nullable: false, api_name: "createdDate"
        field :success_date, -> { String }, optional: false, nullable: true, api_name: "successDate"
        field :last_failed_date, -> { String }, optional: false, nullable: true, api_name: "lastFailedDate"
        field :is_in_progress, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isInProgress"
      end
    end
  end
end
