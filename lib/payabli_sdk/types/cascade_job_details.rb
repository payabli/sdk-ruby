# frozen_string_literal: true

module PayabliSdk
  module Types
    # Details about the cascade process.
    class CascadeJobDetails < Internal::Types::Model
      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"
      field :job_error_message, -> { String }, optional: true, nullable: false, api_name: "jobErrorMessage"
      field :job_id, -> { String }, optional: true, nullable: false, api_name: "jobId"
      field :job_status, -> { String }, optional: true, nullable: false, api_name: "jobStatus"
      field :updated_at, -> { String }, optional: true, nullable: false, api_name: "updatedAt"
    end
  end
end
