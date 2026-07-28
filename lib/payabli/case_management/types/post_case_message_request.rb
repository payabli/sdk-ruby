# frozen_string_literal: true

module Payabli
  module CaseManagement
    module Types
      class PostCaseMessageRequest < Internal::Types::Model
        field :case_uuid, -> { String }, optional: false, nullable: false, api_name: "caseUuid"

        field :content, -> { String }, optional: false, nullable: false
      end
    end
  end
end
