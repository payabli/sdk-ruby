# frozen_string_literal: true

module PayabliSdk
  module Export
    module Types
      module ExportFormat1
        extend PayabliSdk::Internal::Types::Enum

        CSV = "csv"
        XLSX = "xlsx"
      end
    end
  end
end
