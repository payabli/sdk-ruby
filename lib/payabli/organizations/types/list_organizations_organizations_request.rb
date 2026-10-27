# frozen_string_literal: true

module Payabli
  module Organizations
    module Types
      class ListOrganizationsOrganizationsRequest < Internal::Types::Model
        field :business_reference, -> { String }, optional: true, nullable: false, api_name: "businessReference"

        field :status, -> { String }, optional: true, nullable: false

        field :search, -> { String }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
