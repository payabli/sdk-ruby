# frozen_string_literal: true

module Payabli
  module Types
    class OrgXScope < Internal::Types::Model
      field :org_entry, -> { String }, optional: true, nullable: false, api_name: "orgEntry"
      field :org_id, -> { Integer }, optional: true, nullable: false, api_name: "orgId"
      field :org_type, -> { Integer }, optional: true, nullable: false, api_name: "orgType"
    end
  end
end
