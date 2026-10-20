# frozen_string_literal: true

module Payabli
  module Types
    module CaseManagementMoneyOutService
      extend Payabli::Internal::Types::Enum

      ACH = "Ach"
      V_CARD = "VCard"
      MANAGED = "Managed"
      CHECK = "Check"
      RTP = "Rtp"
      WIRE = "Wire"
      GHOST = "Ghost"
    end
  end
end
