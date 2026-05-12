# frozen_string_literal: true

module Payabli
  module PaymentMethodDomain
    module Types
      class ListPaymentMethodDomainsRequest < Internal::Types::Model
        field :entity_id, -> { Integer }, optional: true, nullable: false, api_name: "entityId"
        field :entity_type, -> { String }, optional: true, nullable: false, api_name: "entityType"
        field :from_record, -> { Integer }, optional: true, nullable: false, api_name: "fromRecord"
        field :limit_record, -> { Integer }, optional: true, nullable: false, api_name: "limitRecord"
      end
    end
  end
end
