# frozen_string_literal: true

module Payabli
  module Boarding
    module Types
      class ListBoardingLinksRequest < Internal::Types::Model
        field :org_id, -> { Integer }, optional: false, nullable: false, api_name: "orgId"
        field :from_record, -> { Integer }, optional: true, nullable: false, api_name: "fromRecord"
        field :limit_record, -> { Integer }, optional: true, nullable: false, api_name: "limitRecord"
        field :parameters, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
        field :sort_by, -> { String }, optional: true, nullable: false, api_name: "sortBy"
      end
    end
  end
end
