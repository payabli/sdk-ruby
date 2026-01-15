# frozen_string_literal: true

require_relative "wiremock_test_case"

class ImportWireTest < WireMockTestCase
  def setup
    super

    @client = PayabliSdk::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_import_import_bills_with_wiremock
    test_id = "import.import_bills.0"

    @client.import.import_bills(
      entry: "8cfec329267",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "import.import_bills.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Import/billsForm/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_import_import_customer_with_wiremock
    test_id = "import.import_customer.0"

    @client.import.import_customer(
      entry: "8cfec329267",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "import.import_customer.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Import/customersForm/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_import_import_vendor_with_wiremock
    test_id = "import.import_vendor.0"

    @client.import.import_vendor(
      entry: "8cfec329267",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "import.import_vendor.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Import/vendorsForm/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end
end
