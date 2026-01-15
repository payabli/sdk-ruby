# frozen_string_literal: true

module PayabliSdk
  module Types
    class OList < Internal::Types::Model
      field :oaddress, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :ocity, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :ocountry, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :odriverstate, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :ostate, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :ownerdob, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :ownerdriver, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :owneremail, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :ownername, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :ownerpercent, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :ownerphone_1, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false, api_name: "ownerphone1"
      field :ownerphone_2, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false, api_name: "ownerphone2"
      field :ownerssn, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :ownertitle, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :ozip, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
    end
  end
end
