# frozen_string_literal: true

module Payabli
  module Types
    # A file attached to a case.
    class AttachmentResponse < Internal::Types::Model
      field :uuid, -> { String }, optional: false, nullable: false

      field :case_uuid, -> { String }, optional: false, nullable: false, api_name: "caseUuid"

      field :file_type, -> { String }, optional: false, nullable: false, api_name: "fileType"

      field :filename, -> { String }, optional: false, nullable: false

      field :file_url, -> { String }, optional: false, nullable: false, api_name: "fileUrl"

      field :uploaded_at, -> { String }, optional: false, nullable: false, api_name: "uploadedAt"

      field :uploaded_by, -> { String }, optional: false, nullable: false, api_name: "uploadedBy"

      field :uploaded_by_user, -> { Payabli::Types::UserRef }, optional: false, nullable: true, api_name: "uploadedByUser"
    end
  end
end
