# frozen_string_literal: true

module Payabli
  module Types
    class BAddress < Internal::Types::Model
      field :baddress, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :baddress_1, -> { Payabli::Types::LinkData }, optional: true, nullable: false, api_name: "baddress1"
      field :bcity, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :bcountry, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :bstate, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :bzip, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :maddress, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :maddress_1, -> { Payabli::Types::LinkData }, optional: true, nullable: false, api_name: "maddress1"
      field :mcity, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :mcountry, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :mstate, -> { Payabli::Types::LinkData }, optional: true, nullable: false
      field :mzip, -> { Payabli::Types::LinkData }, optional: true, nullable: false
    end
  end
end
