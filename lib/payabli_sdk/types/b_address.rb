# frozen_string_literal: true

module PayabliSdk
  module Types
    class BAddress < Internal::Types::Model
      field :baddress, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :baddress_1, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false, api_name: "baddress1"
      field :bcity, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :bcountry, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :bstate, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :bzip, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :maddress, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :maddress_1, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false, api_name: "maddress1"
      field :mcity, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :mcountry, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :mstate, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
      field :mzip, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false
    end
  end
end
