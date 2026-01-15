# frozen_string_literal: true

module PayabliSdk
  module Types
    class QueryResponseItemsRecordsItem < Internal::Types::Model
      field :line_item, -> { PayabliSdk::Types::LineItem }, optional: true, nullable: false, api_name: "LineItem"
      field :parent_org_name, -> { String }, optional: true, nullable: false, api_name: "ParentOrgName"
      field :paypoint_dbaname, -> { String }, optional: true, nullable: false, api_name: "PaypointDbaname"
      field :paypoint_entryname, -> { String }, optional: true, nullable: false, api_name: "PaypointEntryname"
      field :paypoint_legalname, -> { String }, optional: true, nullable: false, api_name: "PaypointLegalname"
    end
  end
end
