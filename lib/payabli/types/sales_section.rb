# frozen_string_literal: true

module Payabli
  module Types
    class SalesSection < Internal::Types::Model
      field :sales_code, -> { String }, optional: true, nullable: false, api_name: "salesCode"
      field :sales_crm, -> { String }, optional: true, nullable: false, api_name: "salesCRM"
    end
  end
end
