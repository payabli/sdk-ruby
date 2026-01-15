# frozen_string_literal: true

module PayabliSdk
  module Types
    class NotificationContent < Internal::Types::Model
      field :event_type, -> { PayabliSdk::Types::NotificationContentEventType }, optional: true, nullable: false, api_name: "eventType"
      field :file_format, -> { PayabliSdk::Types::NotificationContentFileFormat }, optional: true, nullable: false, api_name: "fileFormat"
      field :internal_data, -> { Internal::Types::Array[PayabliSdk::Types::KeyValueDuo] }, optional: true, nullable: false, api_name: "internalData"
      field :report_name, -> { PayabliSdk::Types::NotificationContentReportName }, optional: true, nullable: false, api_name: "reportName"
      field :time_zone, -> { Integer }, optional: true, nullable: false, api_name: "timeZone"
      field :transaction_id, -> { String }, optional: true, nullable: false, api_name: "transactionId"
      field :web_header_parameters, -> { Internal::Types::Array[PayabliSdk::Types::KeyValueDuo] }, optional: true, nullable: false, api_name: "webHeaderParameters"
    end
  end
end
