# frozen_string_literal: true

module Payabli
  module Types
    # A notification log entry returned by the detail and retry endpoints, including the request and response captured
    # for the delivery.
    class NotificationLogDetail < Internal::Types::Model
      field :organization_name, -> { String }, optional: false, nullable: false, api_name: "organizationName"

      field :paypoint_name, -> { String }, optional: false, nullable: false, api_name: "paypointName"

      field :request_id, -> { String }, optional: false, nullable: false, api_name: "requestId"

      field :id, -> { String }, optional: false, nullable: false

      field :org_id, -> { Integer }, optional: false, nullable: true, api_name: "orgId"

      field :paypoint_id, -> { Integer }, optional: false, nullable: true, api_name: "paypointId"

      field :notification_event, -> { String }, optional: false, nullable: true, api_name: "notificationEvent"

      field :target, -> { String }, optional: false, nullable: true

      field :response_status_code, -> { Integer }, optional: false, nullable: false, api_name: "responseStatusCode"

      field :response_status, -> { String }, optional: false, nullable: false, api_name: "responseStatus"

      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :job_data, -> { String }, optional: false, nullable: true, api_name: "jobData"

      field :created_date, -> { String }, optional: false, nullable: false, api_name: "createdDate"

      field :success_date, -> { String }, optional: false, nullable: true, api_name: "successDate"

      field :last_failed_date, -> { String }, optional: false, nullable: true, api_name: "lastFailedDate"

      field :is_in_progress, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isInProgress"

      field :web_headers, -> { Internal::Types::Array[Payabli::Types::StringStringKeyValuePair] }, optional: false, nullable: true, api_name: "webHeaders"

      field :response_headers, -> { Internal::Types::Array[Payabli::Types::KeyValueArray] }, optional: false, nullable: true, api_name: "responseHeaders"

      field :response_content, -> { String }, optional: false, nullable: false, api_name: "responseContent"
    end
  end
end
