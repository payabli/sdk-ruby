# frozen_string_literal: true

module Payabli
  module Types
    # A page of paypoints.
    class ListPaypointsResponse < Internal::Types::Model
      field :items, -> { Internal::Types::Array[Payabli::Types::PaypointSummaryResponse] }, optional: false, nullable: true

      field :total, -> { Integer }, optional: false, nullable: false

      field :page, -> { Integer }, optional: false, nullable: false

      field :page_size, -> { Integer }, optional: false, nullable: false, api_name: "pageSize"
    end
  end
end
