# frozen_string_literal: true

module Payabli
  module Types
    module DeviceQueryRecordOperationalStatus
      extend Payabli::Internal::Types::Enum

      ONLINE = "online"
      BUSY = "busy"
      OFFLINE = "offline"
    end
  end
end
