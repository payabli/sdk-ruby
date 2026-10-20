# frozen_string_literal: true

module Payabli
  module Applications
    module Types
      class UpdateApplicationRequest < Internal::Types::Model
        field :requests_reference, -> { String }, optional: false, nullable: false, api_name: "requestsReference"

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :entity_type, -> { String }, optional: true, nullable: false, api_name: "entityType"

        field :request_template, -> { String }, optional: true, nullable: false, api_name: "requestTemplate"

        field :tags, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :representatives, -> { Internal::Types::Array[Payabli::Types::RepresentativeInput] }, optional: true, nullable: false

        field :configurations, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :services, -> { Payabli::Types::RequestedServices }, optional: true, nullable: false
      end
    end
  end
end
