# frozen_string_literal: true

module PayabliSdk
  module Export
    module Types
      class ExportTransfersRequest < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false
        field :columns_export, -> { String }, optional: true, nullable: false, api_name: "columnsExport"
        field :from_record, -> { Integer }, optional: true, nullable: false, api_name: "fromRecord"
        field :limit_record, -> { Integer }, optional: true, nullable: false, api_name: "limitRecord"
        field :parameters, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
        field :sort_by, -> { String }, optional: true, nullable: false, api_name: "sortBy"
      end
    end
  end
end
