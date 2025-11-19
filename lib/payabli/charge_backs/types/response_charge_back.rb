# frozen_string_literal: true

module Payabli
  module ChargeBacks
    module Types
      class ResponseChargeBack < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false, api_name: "Id"
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :attachments, -> { Internal::Types::Array[Payabli::Types::FileContent] }, optional: true, nullable: false
        field :contact_email, -> { String }, optional: true, nullable: false, api_name: "contactEmail"
        field :contact_name, -> { String }, optional: true, nullable: false, api_name: "contactName"
        field :notes, -> { String }, optional: true, nullable: false
      end
    end
  end
end
