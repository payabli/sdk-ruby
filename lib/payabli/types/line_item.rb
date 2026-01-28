# frozen_string_literal: true

module Payabli
  module Types
    class LineItem < Internal::Types::Model
      field :item_categories, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "itemCategories"
      field :item_commodity_code, -> { String }, optional: true, nullable: false, api_name: "itemCommodityCode"
      field :item_cost, -> { Integer }, optional: false, nullable: false, api_name: "itemCost"
      field :item_description, -> { String }, optional: true, nullable: false, api_name: "itemDescription"
      field :item_mode, -> { Integer }, optional: true, nullable: false, api_name: "itemMode"
      field :item_product_code, -> { String }, optional: true, nullable: false, api_name: "itemProductCode"
      field :item_product_name, -> { String }, optional: true, nullable: false, api_name: "itemProductName"
      field :item_qty, -> { Integer }, optional: false, nullable: false, api_name: "itemQty"
      field :item_unit_of_measure, -> { String }, optional: true, nullable: false, api_name: "itemUnitOfMeasure"
    end
  end
end
