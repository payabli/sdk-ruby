# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # Response body for queries about cloud devices.
      class QueryDeviceResponse < Internal::Types::Model
        field :summary, -> { Payabli::Types::QuerySummary }, optional: false, nullable: false, api_name: "Summary"
        field :records, -> { Internal::Types::Array[Payabli::QueryTypes::Types::DeviceQueryRecord] }, optional: false, nullable: false, api_name: "Records"
      end
    end
  end
end
