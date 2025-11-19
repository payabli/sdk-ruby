# frozen_string_literal: true

module Payabli
  module Types
    class NotificationReportRequestContent < Internal::Types::Model
      field :event_type, -> { String }, optional: true, nullable: false, api_name: "eventType"
      field :file_format, lambda {
        Payabli::Types::NotificationReportRequestContentFileFormat
      }, optional: true, nullable: false, api_name: "fileFormat"
      field :internal_data, lambda {
        Internal::Types::Array[Payabli::Types::KeyValueDuo]
      }, optional: true, nullable: false, api_name: "internalData"
      field :report_name, lambda {
        Payabli::Types::NotificationReportRequestContentReportName
      }, optional: true, nullable: false, api_name: "reportName"
      field :time_zone, -> { Integer }, optional: true, nullable: false, api_name: "timeZone"
      field :transaction_id, -> { String }, optional: true, nullable: false, api_name: "transactionId"
      field :web_header_parameters, lambda {
        Internal::Types::Array[Payabli::Types::KeyValueDuo]
      }, optional: true, nullable: false, api_name: "webHeaderParameters"
    end
  end
end
