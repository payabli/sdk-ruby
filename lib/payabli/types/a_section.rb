# frozen_string_literal: true

module Payabli
  module Types
    class ASection < Internal::Types::Model
      field :minimum_documents, -> { Integer }, optional: true, nullable: false, api_name: "minimumDocuments"
      field :multiple_contacts, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "multipleContacts"
      field :multiple_owners, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "multipleOwners"
    end
  end
end
