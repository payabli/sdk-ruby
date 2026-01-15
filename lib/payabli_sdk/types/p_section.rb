# frozen_string_literal: true

module PayabliSdk
  module Types
    class PSection < Internal::Types::Model
      field :avgmonthly, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :binperson, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :binphone, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :binweb, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :bsummary, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :highticketamt, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :mcc, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :ticketamt, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :when_charged, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false, api_name: "whenCharged"
      field :when_delivered, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false, api_name: "whenDelivered"
      field :when_provided, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false, api_name: "whenProvided"
      field :when_refunded, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false, api_name: "whenRefunded"
    end
  end
end
