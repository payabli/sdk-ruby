# frozen_string_literal: true

module Payabli
  module Types
    class QueryResponseNotificationReportsRecordsItem < Internal::Types::Model
      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"
      field :id, -> { Integer }, optional: true, nullable: false
      field :is_downloadable, lambda {
        Internal::Types::Boolean
      }, optional: true, nullable: false, api_name: "isDownloadable"
      field :report_name, -> { String }, optional: true, nullable: false, api_name: "reportName"
    end
  end
end
