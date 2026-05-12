# frozen_string_literal: true

module Payabli
  module Types
    class SummaryOrg < Internal::Types::Model
      field :amount_subs, -> { Integer }, optional: true, nullable: false, api_name: "amountSubs"
      field :amount_tx, -> { Integer }, optional: true, nullable: false, api_name: "amountTx"
      field :child_orgs, -> { Integer }, optional: true, nullable: false, api_name: "childOrgs"
      field :child_paypoints, -> { Integer }, optional: true, nullable: false, api_name: "childPaypoints"
      field :count_subs, -> { Integer }, optional: true, nullable: false, api_name: "countSubs"
      field :count_tx, -> { Integer }, optional: true, nullable: false, api_name: "countTx"
    end
  end
end
