# frozen_string_literal: true

module Payabli
  module CaseManagement
    module Types
      class TransitionCaseRequest < Internal::Types::Model
        field :uuid, -> { String }, optional: false, nullable: false

        field :trigger, -> { Payabli::Types::CaseTrigger }, optional: false, nullable: false

        field :reason, -> { String }, optional: false, nullable: false

        field :decline_reason, -> { Payabli::Types::BankReviewDecisionReason }, optional: true, nullable: false, api_name: "declineReason"
      end
    end
  end
end
