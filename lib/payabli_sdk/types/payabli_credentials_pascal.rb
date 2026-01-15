# frozen_string_literal: true

module PayabliSdk
  module Types
    class PayabliCredentialsPascal < Internal::Types::Model
      field :service, -> { String }, optional: true, nullable: false, api_name: "Service"
      field :mode, -> { Integer }, optional: true, nullable: false, api_name: "Mode"
      field :min_ticket, -> { Integer }, optional: false, nullable: false, api_name: "MinTicket"
      field :max_ticket, -> { Integer }, optional: false, nullable: false, api_name: "MaxTicket"
      field :cfee_fix, -> { Integer }, optional: true, nullable: false, api_name: "CfeeFix"
      field :cfee_float, -> { Integer }, optional: true, nullable: false, api_name: "CfeeFloat"
      field :cfee_min, -> { Integer }, optional: true, nullable: false, api_name: "CfeeMin"
      field :cfee_max, -> { Integer }, optional: true, nullable: false, api_name: "CfeeMax"
      field :account_id, -> { String }, optional: true, nullable: false, api_name: "AccountId"
      field :reference_id, -> { Integer }, optional: true, nullable: false, api_name: "ReferenceId"
      field :accept_same_day_ach, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "acceptSameDayACH"
      field :currency, -> { String }, optional: true, nullable: false, api_name: "Currency"
    end
  end
end
