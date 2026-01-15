# frozen_string_literal: true

module PayabliSdk
  module MoneyIn
    module Types
      # Event associated with transaction processing
      class TransactionDetailEvent < Internal::Types::Model
        field :trans_event, -> { String }, optional: false, nullable: false, api_name: "transEvent"
        field :event_data, -> { String }, optional: false, nullable: false, api_name: "eventData"
        field :event_time, -> { String }, optional: false, nullable: false, api_name: "eventTime"
      end
    end
  end
end
