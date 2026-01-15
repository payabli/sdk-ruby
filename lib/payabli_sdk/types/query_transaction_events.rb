# frozen_string_literal: true

module PayabliSdk
  module Types
    class QueryTransactionEvents < Internal::Types::Model
      field :event_data, -> { PayabliSdk::Types::QueryTransactionEventsEventData }, optional: true, nullable: false, api_name: "EventData"
      field :event_time, -> { String }, optional: true, nullable: false, api_name: "EventTime"
      field :trans_event, -> { String }, optional: true, nullable: false, api_name: "TransEvent"
    end
  end
end
