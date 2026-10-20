# frozen_string_literal: true

module Payabli
  module Types
    # The error body when a document request fails.
    class ApplicationDocumentError < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :error, -> { String }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :trace_id, -> { String }, optional: false, nullable: true, api_name: "traceId"
    end
  end
end
