# frozen_string_literal: true

module Payabli
  module Types
    # A cursor-paginated page of case notes, ordered oldest to newest.
    class MessagePage < Internal::Types::Model
      field :messages, -> { Internal::Types::Array[Payabli::Types::RoomMessageView] }, optional: false, nullable: false

      field :next_cursor, -> { String }, optional: false, nullable: true, api_name: "nextCursor"
    end
  end
end
