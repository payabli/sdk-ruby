# frozen_string_literal: true

module Payabli
  module Types
    # A certification held by the business.
    class CertificationDetail < Internal::Types::Model
      field :certification_type, -> { String }, optional: true, nullable: false, api_name: "certificationType"

      field :issuer, -> { String }, optional: true, nullable: false

      field :certificate_number, -> { String }, optional: true, nullable: false, api_name: "certificateNumber"

      field :issued_date, -> { String }, optional: true, nullable: false, api_name: "issuedDate"

      field :expiration_date, -> { String }, optional: true, nullable: false, api_name: "expirationDate"
    end
  end
end
