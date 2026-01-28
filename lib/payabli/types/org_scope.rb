# frozen_string_literal: true

module Payabli
  module Types
    class OrgScope < Internal::Types::Model
      field :org_id, -> { Integer }, optional: true, nullable: false, api_name: "orgId"
      field :org_type, -> { Integer }, optional: true, nullable: false, api_name: "orgType"
    end
  end
end
