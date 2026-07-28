# frozen_string_literal: true

module Payabli
  module Types
    # The result of posting a note to a case.
    class PostedMessage < Internal::Types::Model
      field :message_id, -> { Integer }, optional: false, nullable: false, api_name: "messageId"

      field :room_id, -> { Integer }, optional: false, nullable: false, api_name: "roomId"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"
    end
  end
end
