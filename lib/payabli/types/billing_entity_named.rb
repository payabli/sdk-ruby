# frozen_string_literal: true

module Payabli
  module Types
    # An owning entity, as returned by the List profiles endpoint (`entityType`
    # serialized as a name).
    class BillingEntityNamed < Internal::Types::Model
      field :entity_type, -> { Payabli::Types::EntityTypeName }, optional: false, nullable: false, api_name: "entityType"

      field :entity_id, -> { Integer }, optional: false, nullable: false, api_name: "entityId"
    end
  end
end
