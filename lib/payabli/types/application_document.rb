# frozen_string_literal: true

module Payabli
  module Types
    # A document uploaded to an application.
    class ApplicationDocument < Internal::Types::Model
      field :document_reference, -> { String }, optional: false, nullable: false, api_name: "documentReference"

      field :kind, -> { String }, optional: false, nullable: false

      field :subject_type, -> { Payabli::Types::DocumentSubjectType }, optional: false, nullable: false, api_name: "subjectType"

      field :person_reference, -> { String }, optional: false, nullable: true, api_name: "personReference"

      field :field_path, -> { String }, optional: false, nullable: false, api_name: "fieldPath"

      field :file_name, -> { String }, optional: false, nullable: false, api_name: "fileName"

      field :mime_type, -> { String }, optional: false, nullable: false, api_name: "mimeType"

      field :file_size_bytes, -> { Integer }, optional: false, nullable: false, api_name: "fileSizeBytes"

      field :uploaded_at, -> { String }, optional: false, nullable: false, api_name: "uploadedAt"
    end
  end
end
