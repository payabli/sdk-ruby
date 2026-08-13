# frozen_string_literal: true

module Payabli
  module Types
    module QueryPayoutTransactionRecordsItemAllowedActionsItem
      extend Payabli::Internal::Types::Enum

      CAPTURE = "capture"
      CANCEL = "cancel"
      REISSUE = "reissue"
    end
  end
end
