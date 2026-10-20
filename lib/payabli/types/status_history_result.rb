# frozen_string_literal: true

module Payabli
  module Types
    # An application's status history.
    class StatusHistoryResult < Internal::Types::Model
      field :requests_reference, -> { String }, optional: false, nullable: false, api_name: "requestsReference"

      field :history, -> { Internal::Types::Array[Payabli::Types::StatusHistoryEntry] }, optional: false, nullable: false
    end
  end
end
