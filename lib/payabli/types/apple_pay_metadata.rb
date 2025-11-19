# frozen_string_literal: true

module Payabli
  module Types
    # This metadata appears only when the domain verification check fails. It gives more information about why the check failed.
    class ApplePayMetadata < Internal::Types::Model
      field :is_file_available, lambda {
        Internal::Types::Boolean
      }, optional: true, nullable: false, api_name: "isFileAvailable"
      field :is_file_content_valid, lambda {
        Internal::Types::Boolean
      }, optional: true, nullable: false, api_name: "isFileContentValid"
      field :redirect_domain_name, -> { String }, optional: true, nullable: false, api_name: "redirectDomainName"
      field :redirect_url, -> { String }, optional: true, nullable: false, api_name: "redirectUrl"
      field :status_code, -> { Integer }, optional: true, nullable: false, api_name: "statusCode"
    end
  end
end
