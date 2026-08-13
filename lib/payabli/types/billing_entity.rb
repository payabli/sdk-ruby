# frozen_string_literal: true

module Payabli
  module Types
    # An owning or participating entity, as returned by the View profile endpoint
    # (`entityType` serialized as an integer).
    class BillingEntity < Internal::Types::Model
      field :entity_type, -> { Integer }, optional: false, nullable: false, api_name: "entityType"

      field :entity_id, -> { Integer }, optional: false, nullable: false, api_name: "entityId"
    end
  end
end
