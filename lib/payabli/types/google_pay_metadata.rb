# frozen_string_literal: true

module Payabli
  module Types
    # This metadata appears only when the domain verification check fails. It gives more information about why the check
    # failed.
    class GooglePayMetadata < Internal::Types::Model
      field :status_code, -> { Integer }, optional: true, nullable: false, api_name: "statusCode"
      field :redirect_url, -> { String }, optional: true, nullable: false, api_name: "redirectUrl"
      field :redirect_domain_name, -> { String }, optional: true, nullable: false, api_name: "redirectDomainName"
    end
  end
end
