# frozen_string_literal: true

module Payabli
  module Types
    module CaseState
      extend Payabli::Internal::Types::Enum

      SUBMITTED = "Submitted"
      VERIFYING = "Verifying"
      PENDING_REVIEW = "PendingReview"
      ASSIGNED = "Assigned"
      PENDING_RESPONSE = "PendingResponse"
      ESCALATED = "Escalated"
      APPROVED = "Approved"
      AUTO_APPROVED = "AutoApproved"
      PENDING_COMPLETION = "PendingCompletion"
      COMPLETED = "Completed"
      DENIED = "Denied"
      ERROR = "Error"
    end
  end
end
