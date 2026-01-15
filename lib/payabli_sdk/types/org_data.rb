# frozen_string_literal: true

module PayabliSdk
  module Types
    class OrgData < Internal::Types::Model
      field :id_org, -> { Integer }, optional: true, nullable: false, api_name: "idOrg"
      field :org_address, -> { String }, optional: true, nullable: false, api_name: "orgAddress"
      field :org_logo, -> { PayabliSdk::Types::FileContent }, optional: true, nullable: false, api_name: "orgLogo"
      field :org_name, -> { String }, optional: true, nullable: false, api_name: "orgName"
      field :org_status, -> { Integer }, optional: true, nullable: false, api_name: "orgStatus"
      field :org_type, -> { Integer }, optional: true, nullable: false, api_name: "orgType"
    end
  end
end
