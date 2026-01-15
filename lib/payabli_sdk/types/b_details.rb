# frozen_string_literal: true

module PayabliSdk
  module Types
    class BDetails < Internal::Types::Model
      field :btype, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :dbaname, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :ein, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :faxnumber, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :legalname, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :license, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :licstate, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :phonenumber, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :startdate, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :taxfillname, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :website, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
    end
  end
end
