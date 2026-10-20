# frozen_string_literal: true

module Payabli
  module Types
    # A document the application asks for. A requirement comes from the application's template or from a Payabli
    # business rule. For example, a business with an annual revenue of $1,000,000 or more needs bank statements.
    #
    # A person requirement appears once for each owner of the business, with that owner's `personReference`.
    class DocumentRequirement < Internal::Types::Model
      field :field_path, -> { String }, optional: false, nullable: false, api_name: "fieldPath"

      field :label, -> { String }, optional: false, nullable: false

      field :hint, -> { String }, optional: true, nullable: false

      field :source, -> { Payabli::Types::DocumentRequirementSource }, optional: false, nullable: false

      field :subject_types, -> { Internal::Types::Array[Payabli::Types::DocumentSubjectType] }, optional: false, nullable: false, api_name: "subjectTypes"

      field :person_reference, -> { String }, optional: true, nullable: false, api_name: "personReference"

      field :required, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :max_uploads, -> { Integer }, optional: false, nullable: false, api_name: "maxUploads"

      field :allowed_formats, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "allowedFormats"

      field :uploaded_count, -> { Integer }, optional: false, nullable: false, api_name: "uploadedCount"
    end
  end
end
