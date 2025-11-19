# frozen_string_literal: true

module Payabli
  module Types
    class QueryTransactionEvents < Internal::Types::Model
      field :event_data, lambda {
        Payabli::Types::QueryTransactionEventsEventData
      }, optional: true, nullable: false, api_name: "EventData"
      field :event_time, -> { String }, optional: true, nullable: false, api_name: "EventTime"
      field :trans_event, -> { String }, optional: true, nullable: false, api_name: "TransEvent"
    end
  end
end
