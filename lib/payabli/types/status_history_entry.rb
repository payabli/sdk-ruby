# frozen_string_literal: true

module Payabli
  module Types
    # A single transition in an application's status history.
    class StatusHistoryEntry < Internal::Types::Model
      field :from_status, -> { String }, optional: false, nullable: false, api_name: "fromStatus"

      field :to_status, -> { String }, optional: false, nullable: false, api_name: "toStatus"

      field :trigger, -> { String }, optional: false, nullable: false

      field :actor, -> { String }, optional: false, nullable: true

      field :reason, -> { String }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"
    end
  end
end
