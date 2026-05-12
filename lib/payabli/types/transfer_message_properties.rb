# frozen_string_literal: true

module Payabli
  module Types
    class TransferMessageProperties < Internal::Types::Model
      field :original_transfer_status, -> { String }, optional: false, nullable: true, api_name: "originalTransferStatus"
      field :current_transfer_status, -> { String }, optional: false, nullable: true, api_name: "currentTransferStatus"
    end
  end
end
