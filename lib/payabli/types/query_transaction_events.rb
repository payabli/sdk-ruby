# frozen_string_literal: true

module Payabli
  module Types
    class QueryTransactionEvents < Internal::Types::Model
      field :trans_event, -> { String }, optional: true, nullable: false, api_name: "TransEvent"

      field :event_data, -> { Payabli::Types::QueryTransactionEventsEventData }, optional: true, nullable: false, api_name: "EventData"

      field :event_time, -> { String }, optional: true, nullable: false, api_name: "EventTime"
    end
  end
end
