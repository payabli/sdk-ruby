# frozen_string_literal: true

module Payabli
  module Types
    # Details of the registered device used for the transaction. `null` when the
    # transaction has no `DeviceId`, or when no matching device is registered to
    # the paypoint.
    class QueryDeviceData < Internal::Types::Model
      field :device_type, -> { String }, optional: false, nullable: true, api_name: "deviceType"

      field :device_os, -> { String }, optional: false, nullable: true, api_name: "deviceOs"

      field :friendly_name, -> { String }, optional: false, nullable: true, api_name: "friendlyName"

      field :serial_number, -> { String }, optional: false, nullable: true, api_name: "serialNumber"

      field :make, -> { String }, optional: false, nullable: true

      field :model, -> { String }, optional: false, nullable: true

      field :mac_address, -> { String }, optional: false, nullable: true, api_name: "macAddress"

      field :device_status, -> { String }, optional: false, nullable: true, api_name: "deviceStatus"
    end
  end
end
