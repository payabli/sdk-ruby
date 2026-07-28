# frozen_string_literal: true

module Payabli
  module CaseManagement
    module Types
      class UploadAttachmentCaseManagementRequest < Internal::Types::Model
        field :case_uuid, -> { String }, optional: false, nullable: false, api_name: "caseUuid"
      end
    end
  end
end
