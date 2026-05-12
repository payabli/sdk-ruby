# frozen_string_literal: true

module Payabli
  module HostedPaymentPages
    module Types
      class NewPageRequest < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :body, -> { Payabli::Types::PayabliPages }, optional: false, nullable: false
      end
    end
  end
end
