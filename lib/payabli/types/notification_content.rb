# frozen_string_literal: true

module Payabli
  module Types
    class NotificationContent < Internal::Types::Model
      field :event_type, -> { Payabli::Types::NotificationContentEventType }, optional: true, nullable: false, api_name: "eventType"
      field :file_format, -> { Payabli::Types::NotificationContentFileFormat }, optional: true, nullable: false, api_name: "fileFormat"
      field :internal_data, -> { Internal::Types::Array[Payabli::Types::KeyValueDuo] }, optional: true, nullable: false, api_name: "internalData"
      field :report_name, -> { Payabli::Types::NotificationContentReportName }, optional: true, nullable: false, api_name: "reportName"
      field :time_zone, -> { Integer }, optional: true, nullable: false, api_name: "timeZone"
      field :transaction_id, -> { String }, optional: true, nullable: false, api_name: "transactionId"
      field :web_header_parameters, -> { Internal::Types::Array[Payabli::Types::KeyValueDuo] }, optional: true, nullable: false, api_name: "webHeaderParameters"
    end
  end
end
