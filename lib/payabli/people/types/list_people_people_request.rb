# frozen_string_literal: true

module Payabli
  module People
    module Types
      class ListPeoplePeopleRequest < Internal::Types::Model
        field :name, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :verification_status, -> { String }, optional: true, nullable: false, api_name: "verificationStatus"

        field :limit, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :sort_by, -> { String }, optional: true, nullable: false, api_name: "sortBy"

        field :sort_order, -> { String }, optional: true, nullable: false, api_name: "sortOrder"
      end
    end
  end
end
