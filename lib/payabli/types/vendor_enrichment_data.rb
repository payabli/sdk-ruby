# frozen_string_literal: true

module Payabli
  module Types
    # Container for enrichment stage results.
    class VendorEnrichmentData < Internal::Types::Model
      field :invoice_scan, -> { Payabli::Types::VendorEnrichmentInvoiceScan }, optional: true, nullable: false, api_name: "invoiceScan"

      field :web_search, -> { Payabli::Types::VendorEnrichmentWebSearch }, optional: true, nullable: false, api_name: "webSearch"
    end
  end
end
