# frozen_string_literal: true

module Payabli
  module Vendor
    module Types
      # Container for enrichment stage results.
      class VendorEnrichmentData < Internal::Types::Model
        field :invoice_scan, -> { Payabli::Vendor::Types::VendorEnrichmentInvoiceScan }, optional: true, nullable: false, api_name: "invoiceScan"

        field :web_search, -> { Payabli::Vendor::Types::VendorEnrichmentWebSearch }, optional: true, nullable: false, api_name: "webSearch"
      end
    end
  end
end
