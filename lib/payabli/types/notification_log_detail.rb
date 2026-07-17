# frozen_string_literal: true

module Payabli
  module Types
    class NotificationLogDetail < Internal::Types::Model
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

      field :web_headers, -> { Internal::Types::Array[Payabli::Types::StringStringKeyValuePair] }, optional: true, nullable: false, api_name: "webHeaders"

      field :response_headers, -> { Internal::Types::Array[Payabli::Types::KeyValueArray] }, optional: true, nullable: false, api_name: "responseHeaders"

      field :response_content, -> { String }, optional: true, nullable: false, api_name: "responseContent"
    end
  end
end
