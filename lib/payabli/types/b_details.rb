# frozen_string_literal: true

module Payabli
  module Types
    class BDetails < Internal::Types::Model
      field :btype, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :dbaname, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :ein, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :faxnumber, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :legalname, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :license, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :licstate, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :phonenumber, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :startdate, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :taxfillname, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :website, -> { Payabli::Types::LinkData }, optional: true, nullable: false
    end
  end
end
