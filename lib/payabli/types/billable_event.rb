# frozen_string_literal: true

module Payabli
  module Types
    # A chargeable action covered by a billing profile, with the fee schedule(s)
    # that apply to it.
    class BillableEvent < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :vertical, -> { Integer }, optional: false, nullable: false

      field :service, -> { Integer }, optional: false, nullable: false

      field :service_type, -> { Integer }, optional: false, nullable: false, api_name: "serviceType"

      field :event_type, -> { Integer }, optional: false, nullable: false, api_name: "eventType"

      field :event_group, -> { Integer }, optional: false, nullable: false, api_name: "eventGroup"

      field :event_source, -> { Integer }, optional: false, nullable: false, api_name: "eventSource"

      field :region_type, -> { Integer }, optional: false, nullable: false, api_name: "regionType"

      field :fee_schedules, -> { Internal::Types::Array[Payabli::Types::FeeSchedule] }, optional: false, nullable: false, api_name: "feeSchedules"
    end
  end
end
