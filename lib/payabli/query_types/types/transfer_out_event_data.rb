# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # Event data associated with an outbound transfer.
      class TransferOutEventData < Internal::Types::Model
        field :description, -> { String }, optional: false, nullable: true
        field :event_time, -> { String }, optional: false, nullable: true, api_name: "eventTime"
        field :ref_data, -> { String }, optional: false, nullable: true, api_name: "refData"
        field :extra_data, -> { Object }, optional: false, nullable: true, api_name: "extraData"
        field :source, -> { String }, optional: false, nullable: true
      end
    end
  end
end
