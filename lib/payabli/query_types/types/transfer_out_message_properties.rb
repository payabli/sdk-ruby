# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # Properties associated with a transfer message.
      class TransferOutMessageProperties < Internal::Types::Model
        field :original_transfer_status, -> { String }, optional: false, nullable: true, api_name: "originalTransferStatus"
        field :current_transfer_status, -> { String }, optional: false, nullable: true, api_name: "currentTransferStatus"
      end
    end
  end
end
