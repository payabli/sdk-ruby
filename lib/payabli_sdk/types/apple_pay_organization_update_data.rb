# frozen_string_literal: true

module PayabliSdk
  module Types
    class ApplePayOrganizationUpdateData < Internal::Types::Model
      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"
      field :id, -> { String }, optional: true, nullable: false
      field :job_id, -> { String }, optional: true, nullable: false, api_name: "jobId"
      field :job_status, -> { String }, optional: true, nullable: false, api_name: "jobStatus"
      field :organization_id, -> { Integer }, optional: true, nullable: false, api_name: "organizationId"
      field :type, -> { String }, optional: true, nullable: false
      field :updated_at, -> { String }, optional: true, nullable: false, api_name: "updatedAt"
      field :updates, -> { PayabliSdk::Types::OrganizationUpdates }, optional: true, nullable: false
    end
  end
end
