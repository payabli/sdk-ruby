# frozen_string_literal: true

module Payabli
  module Types
    # The reference and updated timestamp after a paypoint update.
    class PaypointUpdatedResponse < Internal::Types::Model
      field :paypoint_reference, -> { String }, optional: false, nullable: false, api_name: "paypointReference"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"

      field :links, -> { Payabli::Types::PaypointLinks }, optional: false, nullable: false, api_name: "_links"
    end
  end
end
