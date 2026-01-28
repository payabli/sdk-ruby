# frozen_string_literal: true

module Payabli
  module Export
    module Types
      module ExportFormat1
        extend Payabli::Internal::Types::Enum

        CSV = "csv"
        XLSX = "xlsx"
      end
    end
  end
end
