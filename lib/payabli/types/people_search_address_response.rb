# frozen_string_literal: true

module Payabli
  module Types
    # An address on a people search result. Search results use a shorter address
    # format than the person record: `street`, `city`, `state`, and `zip`.
    class PeopleSearchAddressResponse < Internal::Types::Model
      field :street, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :state, -> { String }, optional: true, nullable: false

      field :zip, -> { String }, optional: true, nullable: false
    end
  end
end
