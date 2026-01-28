# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # Check data for an outbound transfer detail.
      class TransferOutDetailCheckData < Internal::Types::Model
        field :check_number, -> { String }, optional: false, nullable: true, api_name: "CheckNumber"
        field :check_data, -> { String }, optional: false, nullable: true, api_name: "CheckData"
      end
    end
  end
end
