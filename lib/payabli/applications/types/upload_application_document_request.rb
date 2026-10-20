# frozen_string_literal: true

module Payabli
  module Applications
    module Types
      class UploadApplicationDocumentRequest < Internal::Types::Model
        field :requests_reference, -> { String }, optional: false, nullable: false, api_name: "requestsReference"
      end
    end
  end
end
