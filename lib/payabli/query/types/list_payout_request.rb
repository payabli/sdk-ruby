# frozen_string_literal: true

module Payabli
  module Query
    module Types
      class ListPayoutRequest < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false
        field :export_format, lambda {
          Payabli::Types::ExportFormat
        }, optional: true, nullable: false, api_name: "exportFormat"
        field :from_record, -> { Integer }, optional: true, nullable: false, api_name: "fromRecord"
        field :limit_record, -> { Integer }, optional: true, nullable: false, api_name: "limitRecord"
        field :parameters, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
        field :sort_by, -> { String }, optional: true, nullable: false, api_name: "sortBy"
      end
    end
  end
end
