# frozen_string_literal: true

module Payabli
  module Types
    module CaseManagementBankAccountFunction
      extend Payabli::Internal::Types::Enum

      DEPOSITS = "Deposits"
      WITHDRAWALS = "Withdrawals"
      DEPOSITS_AND_WITHDRAWALS = "DepositsAndWithdrawals"
      REMITTANCES = "Remittances"
      REMITTANCES_AND_DEPOSITS = "RemittancesAndDeposits"
      REMITTANCES_AND_WITHDRAWALS = "RemittancesAndWithdrawals"
      REMITTANCES_DEPOSITS_AND_WITHDRAWALS = "RemittancesDepositsAndWithdrawals"
    end
  end
end
