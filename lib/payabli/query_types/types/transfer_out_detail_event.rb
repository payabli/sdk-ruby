# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # Event data for an outbound transfer detail.
      class TransferOutDetailEvent < Internal::Types::Model
        field :trans_event, -> { String }, optional: false, nullable: true, api_name: "TransEvent"
        field :event_data, -> { String }, optional: false, nullable: true, api_name: "EventData"
        field :event_time, -> { String }, optional: false, nullable: true, api_name: "EventTime"
      end
    end
  end
end
