# frozen_string_literal: true

module Payabli
  module Types
    class PayabliCredentials < Internal::Types::Model
      field :account_id, -> { String }, optional: true, nullable: false, api_name: "accountId"
      field :cfee_fix, -> { Integer }, optional: true, nullable: false, api_name: "cfeeFix"
      field :cfee_float, -> { Integer }, optional: true, nullable: false, api_name: "cfeeFloat"
      field :cfee_max, -> { Integer }, optional: true, nullable: false, api_name: "cfeeMax"
      field :cfee_min, -> { Integer }, optional: true, nullable: false, api_name: "cfeeMin"
      field :maxticket, -> { Integer }, optional: true, nullable: false
      field :minticket, -> { Integer }, optional: true, nullable: false
      field :mode, -> { Integer }, optional: true, nullable: false
      field :reference_id, -> { Integer }, optional: true, nullable: false, api_name: "referenceId"
      field :service, -> { String }, optional: true, nullable: false
    end
  end
end
