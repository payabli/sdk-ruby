# frozen_string_literal: true

module Payabli
  module Types
    class Owners < Internal::Types::Model
      field :ownername, -> { String }, optional: true, nullable: false
      field :ownertitle, -> { String }, optional: true, nullable: false
      field :ownerpercent, -> { Integer }, optional: true, nullable: false
      field :ownerssn, -> { String }, optional: true, nullable: false
      field :ownerdob, -> { String }, optional: true, nullable: false
      field :ownerphone_1, -> { String }, optional: true, nullable: false, api_name: "ownerphone1"
      field :ownerphone_2, -> { String }, optional: true, nullable: false, api_name: "ownerphone2"
      field :owneremail, -> { String }, optional: true, nullable: false
      field :ownerdriver, -> { String }, optional: true, nullable: false
      field :oaddress, -> { String }, optional: true, nullable: false
      field :ocity, -> { String }, optional: true, nullable: false
      field :ocountry, -> { String }, optional: true, nullable: false
      field :odriverstate, -> { String }, optional: true, nullable: false
      field :ostate, -> { String }, optional: true, nullable: false
      field :ozip, -> { String }, optional: true, nullable: false
      field :additional_data, -> { String }, optional: true, nullable: false, api_name: "additionalData"
    end
  end
end
