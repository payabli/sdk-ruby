# frozen_string_literal: true

module Payabli
  module Types
    class LineItemQueryRecord < Internal::Types::Model
      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"
      field :id, -> { Integer }, optional: true, nullable: false
      field :item_categories, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "itemCategories"
      field :item_commodity_code, -> { String }, optional: true, nullable: false, api_name: "itemCommodityCode"
      field :item_cost, -> { Integer }, optional: false, nullable: false, api_name: "itemCost"
      field :item_description, -> { String }, optional: true, nullable: false, api_name: "itemDescription"
      field :item_mode, -> { Integer }, optional: true, nullable: false, api_name: "itemMode"
      field :item_product_code, -> { String }, optional: true, nullable: false, api_name: "itemProductCode"
      field :item_product_name, -> { String }, optional: true, nullable: false, api_name: "itemProductName"
      field :item_qty, -> { Integer }, optional: false, nullable: false, api_name: "itemQty"
      field :item_unit_of_measure, -> { String }, optional: true, nullable: false, api_name: "itemUnitOfMeasure"
      field :last_updated, -> { String }, optional: true, nullable: false, api_name: "lastUpdated"
      field :pageidentifier, -> { String }, optional: true, nullable: false
      field :parent_org_name, -> { String }, optional: true, nullable: false, api_name: "ParentOrgName"
      field :paypoint_dbaname, -> { String }, optional: true, nullable: false, api_name: "PaypointDbaname"
      field :paypoint_entryname, -> { String }, optional: true, nullable: false, api_name: "PaypointEntryname"
      field :paypoint_legalname, -> { String }, optional: true, nullable: false, api_name: "PaypointLegalname"
    end
  end
end
