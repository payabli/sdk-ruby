# frozen_string_literal: true

module Payabli
  module Types
    class TierItem < Internal::Types::Model
      field :amountx_auth, -> { Integer }, optional: true, nullable: false, api_name: "amountxAuth"
      field :high_pay_range, -> { Integer }, optional: true, nullable: false, api_name: "highPayRange"
      field :low_pay_range, -> { Integer }, optional: true, nullable: false, api_name: "lowPayRange"
      field :percentx_auth, -> { Integer }, optional: true, nullable: false, api_name: "percentxAuth"
    end
  end
end
