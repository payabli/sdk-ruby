# frozen_string_literal: true

module PayabliSdk
  module Types
    # Any data associated to the event received from processor. Contents vary by event type.
    class QueryTransactionEventsEventData < Internal::Types::Model
      extend PayabliSdk::Internal::Types::Union

      member -> { Internal::Types::Hash[String, Object] }
      member -> { String }
    end
  end
end
