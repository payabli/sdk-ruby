# frozen_string_literal: true

module Payabli
  module Bill
    module Types
      class ListBillsOrgRequest < Internal::Types::Model
        field :org_id, -> { Integer }, optional: false, nullable: false, api_name: "orgId"
        field :export_format, -> { Payabli::Types::ExportFormat }, optional: true, nullable: false, api_name: "exportFormat"
        field :from_record, -> { Integer }, optional: true, nullable: false, api_name: "fromRecord"
        field :limit_record, -> { Integer }, optional: true, nullable: false, api_name: "limitRecord"
        field :parameters, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
        field :sort_by, -> { String }, optional: true, nullable: false, api_name: "sortBy"
      end
    end
  end
end
