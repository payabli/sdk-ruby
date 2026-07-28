# frozen_string_literal: true

module Payabli
  module Types
    module CaseTrigger
      extend Payabli::Internal::Types::Enum

      SUBMIT = "Submit"
      VERIFY = "Verify"
      REQUEST_REVIEW = "RequestReview"
      ASSIGN = "Assign"
      REQUEST_RESPONSE = "RequestResponse"
      ESCALATE = "Escalate"
      APPROVE = "Approve"
      AUTO_APPROVE = "AutoApprove"
      REQUEST_COMPLETION = "RequestCompletion"
      COMPLETE = "Complete"
      DENY = "Deny"
      ERROR = "Error"
    end
  end
end
