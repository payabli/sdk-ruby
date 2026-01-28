# frozen_string_literal: true

module Payabli
  module Types
    # Any data associated to the event received from processor. Contents vary by event type.
    class QueryTransactionEventsEventData < Internal::Types::Model
      extend Payabli::Internal::Types::Union

      member -> { Internal::Types::Hash[String, Object] }
      member -> { String }
    end
  end
end
