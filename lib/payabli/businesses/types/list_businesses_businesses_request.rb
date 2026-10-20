# frozen_string_literal: true

module Payabli
  module Businesses
    module Types
      class ListBusinessesBusinessesRequest < Internal::Types::Model
        field :status, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :merchant_cat_code, -> { String }, optional: true, nullable: false, api_name: "merchantCatCode"

        field :legal_structure, -> { String }, optional: true, nullable: false, api_name: "legalStructure"

        field :limit, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :sort_by, -> { String }, optional: true, nullable: false, api_name: "sortBy"

        field :sort_order, -> { String }, optional: true, nullable: false, api_name: "sortOrder"
      end
    end
  end
end
