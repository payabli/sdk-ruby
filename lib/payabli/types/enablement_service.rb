# frozen_string_literal: true

module Payabli
  module Types
    # The enablement progress of one service the application requested.
    class EnablementService < Internal::Types::Model
      field :service, -> { String }, optional: false, nullable: false

      field :rail, -> { String }, optional: false, nullable: false

      field :state, -> { String }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: true

      field :missing_fields, -> { Internal::Types::Array[String] }, optional: false, nullable: true, api_name: "missingFields"
    end
  end
end
