# frozen_string_literal: true

module Payabli
  module Types
    # Information about the point of interaction device (also known as a terminal or cloud device) used to process the
    # transaction.
    class PoiDevice < Internal::Types::Model
      field :connected, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :date_de_registered, -> { String }, optional: true, nullable: false, api_name: "dateDeRegistered"
      field :date_registered, -> { String }, optional: true, nullable: false, api_name: "dateRegistered"
      field :device_id, -> { String }, optional: true, nullable: false, api_name: "deviceId"
      field :device_license, -> { String }, optional: true, nullable: false, api_name: "deviceLicense"
      field :device_nick_name, -> { String }, optional: true, nullable: false, api_name: "deviceNickName"
      field :last_connected_date, -> { String }, optional: true, nullable: false, api_name: "lastConnectedDate"
      field :last_disconnected_date, -> { String }, optional: true, nullable: false, api_name: "lastDisconnectedDate"
      field :last_transaction_date, -> { String }, optional: true, nullable: false, api_name: "lastTransactionDate"
      field :make, -> { String }, optional: true, nullable: false
      field :model, -> { String }, optional: true, nullable: false
      field :registered, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :serial_number, -> { String }, optional: true, nullable: false, api_name: "serialNumber"
    end
  end
end
