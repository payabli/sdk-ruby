# frozen_string_literal: true

module Payabli
  module Export
    module Types
      class ExportBatchesOutRequest < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false
        field :format, -> { Payabli::Export::Types::ExportFormat1 }, optional: false, nullable: false
        field :columns_export, -> { String }, optional: true, nullable: false, api_name: "columnsExport"
        field :from_record, -> { Integer }, optional: true, nullable: false, api_name: "fromRecord"
        field :limit_record, -> { Integer }, optional: true, nullable: false, api_name: "limitRecord"
        field :parameters, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
      end
    end
  end
end
