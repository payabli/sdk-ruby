# frozen_string_literal: true

module Payabli
  module Types
    module BankReviewDecisionReason
      extend Payabli::Internal::Types::Enum

      CREDIT_DECLINE = "CreditDecline"
      FRAUD_DECLINE = "FraudDecline"
      KYB_KYC_DECLINE = "KybKycDecline"
      WITHDRAWN = "Withdrawn"
    end
  end
end
