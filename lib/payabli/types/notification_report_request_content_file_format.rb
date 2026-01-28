# frozen_string_literal: true

module Payabli
  module Types
    module NotificationReportRequestContentFileFormat
      extend Payabli::Internal::Types::Enum

      JSON_ = "json"
      CSV = "csv"
      XLSX = "xlsx"
    end
  end
end
