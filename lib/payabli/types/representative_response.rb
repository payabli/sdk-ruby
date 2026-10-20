# frozen_string_literal: true

module Payabli
  module Types
    # A sales or service representative assigned to the application.
    class RepresentativeResponse < Internal::Types::Model
      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"

      field :rep_code, -> { Integer }, optional: true, nullable: false, api_name: "repCode"

      field :first_name, -> { String }, optional: true, nullable: false, api_name: "firstName"

      field :last_name, -> { String }, optional: true, nullable: false, api_name: "lastName"

      field :location, -> { String }, optional: true, nullable: false

      field :team, -> { String }, optional: true, nullable: false
    end
  end
end
