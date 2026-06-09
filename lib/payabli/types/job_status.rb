# frozen_string_literal: true

module Payabli
  module Types
    module JobStatus
      extend Payabli::Internal::Types::Enum

      IN_PROGRESS = "in_progress"
      COMPLETED = "completed"
      FAILED = "failed"
    end
  end
end
