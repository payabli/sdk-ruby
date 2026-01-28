# frozen_string_literal: true

module Payabli
  module Types
    module ExportFormat
      extend Payabli::Internal::Types::Enum

      CSV = "csv"
      XLSX = "xlsx"
    end
  end
end
