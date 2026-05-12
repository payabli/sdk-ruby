# frozen_string_literal: true

module Payabli
  module Paypoint
    module Types
      class PaypointMoveRequest < Internal::Types::Model
        field :entry_point, -> { String }, optional: false, nullable: false, api_name: "entryPoint"
        field :new_parent_organization_id, -> { Integer }, optional: false, nullable: false, api_name: "newParentOrganizationId"
        field :notification_request, -> { Payabli::Paypoint::Types::NotificationRequest }, optional: true, nullable: false, api_name: "notificationRequest"
      end
    end
  end
end
