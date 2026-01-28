# frozen_string_literal: true

module Payabli
  module Types
    class PSection < Internal::Types::Model
      field :avgmonthly, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :binperson, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :binphone, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :binweb, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :bsummary, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :highticketamt, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :mcc, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :ticketamt, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :when_charged, -> { Payabli::Types::LinkData }, optional: true, nullable: false, api_name: "whenCharged"
      field :when_delivered, -> { Payabli::Types::LinkData }, optional: true, nullable: false, api_name: "whenDelivered"
      field :when_provided, -> { Payabli::Types::LinkData }, optional: true, nullable: false, api_name: "whenProvided"
      field :when_refunded, -> { Payabli::Types::LinkData }, optional: true, nullable: false, api_name: "whenRefunded"
    end
  end
end
