# frozen_string_literal: true

module PayabliSdk
  module Types
    # The response data containing the result of the import operation.
    class PayabliApiResponseImportResponseData < Internal::Types::Model
      field :added, -> { Integer }, optional: true, nullable: false
      field :errors, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      field :rejected, -> { Integer }, optional: true, nullable: false
    end
  end
end
