# frozen_string_literal: true

module Payabli
  module Applications
    module Types
      class ListApplicationsApplicationsRequest < Internal::Types::Model
        field :page, -> { Integer }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
