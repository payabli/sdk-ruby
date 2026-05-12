# frozen_string_literal: true

module Payabli
  module Types
    class OList < Internal::Types::Model
      field :oaddress, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :ocity, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :ocountry, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :odriverstate, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :ostate, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :ownerdob, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :ownerdriver, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :owneremail, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :ownername, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :ownerpercent, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :ownerphone_1, -> { Payabli::Types::LinkData }, optional: true, nullable: false, api_name: "ownerphone1"
      field :ownerphone_2, -> { Payabli::Types::LinkData }, optional: true, nullable: false, api_name: "ownerphone2"
      field :ownerssn, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :ownertitle, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :ozip, -> { Payabli::Types::LinkData }, optional: true, nullable: false
    end
  end
end
