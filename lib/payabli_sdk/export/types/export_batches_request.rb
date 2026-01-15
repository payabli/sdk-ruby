# frozen_string_literal: true

module PayabliSdk
  module Export
    module Types
      class ExportBatchesRequest < Internal::Types::Model
        field :format, -> { PayabliSdk::Export::Types::ExportFormat1 }, optional: false, nullable: false
        field :entry, -> { String }, optional: false, nullable: false
        field :columns_export, -> { String }, optional: true, nullable: false, api_name: "columnsExport"
        field :from_record, -> { Integer }, optional: true, nullable: false, api_name: "fromRecord"
        field :limit_record, -> { Integer }, optional: true, nullable: false, api_name: "limitRecord"
        field :parameters, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
      end
    end
  end
end
